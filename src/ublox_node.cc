#include <string>
#include <cstdio>

#include "ros/ros.h"
#include "sensor_msgs/NavSatFix.h"

#include <ublox/GPSFix.h>
#include <ublox/Ephem.h>
#include <ublox/Velned.h>
#include <ublox/raw.h>

#include "ublox/ublox.h"
#include "ublox/ublox_structures.h"

#include <cmath>

using std::string;

class UbloxNode
{
public:
  UbloxNode() : nh_("~"), port_("") {
    this->getROSParameters();
    this->configureROSCommunications();
    this->now_ = ros::Time::now();
  }
  ~UbloxNode() {

  }

  void handle_NavPosLLH(NavPosLLH& nav_pos_llh, double& time_stamp) {
    // this->now_ = ros::Time::now();
    sensor_msgs::NavSatFix msg;
    msg.header.stamp = this->now_;
    // msg.header.stamp = nav_pos_llh.iTOW;
    // msg.header.frame_id = "/ublox";
    msg.header.frame_id = "";

    // See: http://www.ros.org/doc/api/sensor_msgs/html/msg/NavSatFix.html
    msg.status.status = 0; // GPS_FIX
    msg.status.service = 0; // GPS

    msg.latitude = nav_pos_llh.latitude_scaled / 1e7f;
    msg.longitude = nav_pos_llh.longitude_scaled / 1e7f;
    msg.altitude = nav_pos_llh.height / 1000.0f;
    double pos_cov [9] = { pow(nav_pos_llh.horizontal_accuracy / 1000.0f,2) , 0, 0, 0, pow(nav_pos_llh.horizontal_accuracy / 1000.0f,2) , 0, 0, 0, pow(nav_pos_llh.vertical_accuracy / 1000.0f,2)};
    // msg.position_covariance =  pos_cov;
    memcpy ( &msg.position_covariance, &pos_cov, 9*sizeof(double) );



    // msg.position_covariance [0] = pow(nav_pos_llh.horizontal_accuracy / 1000.0f,2);
    // msg.position_covariance [1] = 0;


    this->navsatfix_pub_.publish(msg);
    // navsatfix_pub_.publish(msg);
  }

  void handle_NavSol(NavSol& nav_sol_ecef, double& time_stamp){

    ublox::GPSFix msg;
    this->now_ = ros::Time::now();
    msg.header.stamp = this->now_;
    msg.header.frame_id = "";
    msg.time = nav_sol_ecef.iTOW;
    msg.pdop = nav_sol_ecef.pDop;

    msg.ecefX = nav_sol_ecef.ecefX;
    msg.ecefY = nav_sol_ecef.ecefY;
    msg.ecefZ = nav_sol_ecef.ecefZ;

    msg.ecefVX = nav_sol_ecef.ecefVX;
    msg.ecefVY = nav_sol_ecef.ecefVY;
    msg.ecefVZ = nav_sol_ecef.ecefVZ;

    this->gpsfix_pub_.publish(msg);

  }

  void handle_VelNED(NavVelNed& nav_vel_ned, double& time_stamp){

    ublox::Velned msg;

    msg.header.stamp = this->now_;

    msg.VelN = nav_vel_ned.velocity_north;
    msg.VelE = nav_vel_ned.velocity_east;
    msg.VelD = nav_vel_ned.velocity_down;

    msg.speed = nav_vel_ned.speed;

    msg.heading = nav_vel_ned.heading_scaled / 1e5f;

    this->Velned_pub_.publish(msg);

  }

  void handle_RawMeas(RawMeas& raw_msg_gps, double& time_stamp){

    ublox::raw msg;

    msg.header.stamp = this->now_;
    msg.header.frame_id = "";


    for (int index=0;index<raw_msg_gps.numSV;index++) {
      msg.RawMeasReap[index].cpmeas = raw_msg_gps.rawmeasreap[index].cpmeas;
      msg.RawMeasReap[index].prmeas = raw_msg_gps.rawmeasreap[index].prmeas;
      msg.RawMeasReap[index].domeas = (double) raw_msg_gps.rawmeasreap[index].domeas;
      msg.RawMeasReap[index].svid = (double) raw_msg_gps.rawmeasreap[index].svid;
      msg.RawMeasReap[index].measqual = (double) raw_msg_gps.rawmeasreap[index].measqual;
      msg.RawMeasReap[index].cnratio = (double) raw_msg_gps.rawmeasreap[index].cnratio;
      msg.RawMeasReap[index].lli = (double) raw_msg_gps.rawmeasreap[index].lli;

      //memcpy(&msg.RawMeasReap[index], &raw_msg_gps.rawmeasreap[index], sizeof(raw_msg_gps.rawmeasreap[index]));
    }

    this->raw_pub_.publish(msg);

  }

  void handle_ParsedEphem(ParsedEphemData& gps_ephem, double& time_stamp){

    ublox::Ephem msg;

    msg.header.stamp = this->now_;
    msg.header.frame_id = "";

    msg.ParsedEphemData.prn = (double) gps_ephem.prn;
    msg.ParsedEphemData.tow = (double) gps_ephem.tow;
    msg.ParsedEphemData.health = (double) gps_ephem.health;
    msg.ParsedEphemData.iode1 = (double) gps_ephem.iode1;
    msg.ParsedEphemData.iode2 = (double) gps_ephem.iode2;
    msg.ParsedEphemData.week = (double) gps_ephem.week;
    msg.ParsedEphemData.zweek = (double) gps_ephem.zweek;
    msg.ParsedEphemData.toe = (double) gps_ephem.toe;
    msg.ParsedEphemData.majaxis = (double) gps_ephem.majaxis;
    msg.ParsedEphemData.dN = (double) gps_ephem.dN;
    msg.ParsedEphemData.anrtime = (double) gps_ephem.anrtime;
    msg.ParsedEphemData.ecc = (double) gps_ephem.ecc;
    msg.ParsedEphemData.omega = (double) gps_ephem.omega;
    msg.ParsedEphemData.cuc = (double) gps_ephem.cuc;
    msg.ParsedEphemData.cus = (double) gps_ephem.cus;
    msg.ParsedEphemData.crc = (double) gps_ephem.crc;
    msg.ParsedEphemData.crs = (double) gps_ephem.crs;
    msg.ParsedEphemData.cic = (double) gps_ephem.cic;
    msg.ParsedEphemData.cis = (double) gps_ephem.cis;
    msg.ParsedEphemData.ia = (double) gps_ephem.ia;
    msg.ParsedEphemData.dia = (double) gps_ephem.dia;
    msg.ParsedEphemData.wo = (double) gps_ephem.wo;
    msg.ParsedEphemData.dwo = (double) gps_ephem.dwo;
    msg.ParsedEphemData.iodc = (double) gps_ephem.iodc;
    msg.ParsedEphemData.toc = (double) gps_ephem.toc;
    msg.ParsedEphemData.tgd = (double) gps_ephem.tgd;
    msg.ParsedEphemData.af0 = (double) gps_ephem.af0;
    msg.ParsedEphemData.af1 = (double) gps_ephem.af1;
    msg.ParsedEphemData.af2 = (double) gps_ephem.af2;
    msg.ParsedEphemData.cmot = (double) gps_ephem.cmot;
    msg.ParsedEphemData.ura = (double) gps_ephem.ura;


    this->Ephem_pub_.publish(msg);
  }

  void setup() {
    bool connect_result = false;
    try {
      connect_result = ublox_.Connect(port_, baudrate_);
    } catch (const std::exception &e) {
      ROS_ERROR_STREAM("Error connecting to the uBlox on port `"
                       << port_ << "`: " << e.what());
    }
    ublox_.set_nav_position_llh_callback(
      boost::bind(&UbloxNode::handle_NavPosLLH, this, _1, _2)
    ); 
    ublox_.set_nav_solution_callback(
      boost::bind(&UbloxNode::handle_NavSol, this, _1, _2)
      );
    ublox_.set_rxm_raw_callback(
      boost::bind(&UbloxNode::handle_RawMeas, this, _1, _2)
      );
    ublox_.set_parsed_ephem_callback(
      boost::bind(&UbloxNode::handle_ParsedEphem, this, _1, _2)
      );
    ublox_.set_nav_vel_ned_callback(
      boost::bind(&UbloxNode::handle_VelNED, this, _1, _2)
      );
  }

  void getROSParameters() {
    nh_.param<std::string>("port", port_, "/dev/uBlox");
    nh_.param<int>("baudrate", baudrate_, 9600);
  }

  void configureROSCommunications() {
    navsatfix_pub_ = nh_.advertise<sensor_msgs::NavSatFix>("fix", 1);
    gpsfix_pub_ = nh_.advertise<ublox::GPSFix>("sol",1);
    Velned_pub_ = nh_.advertise<ublox::Velned>("vel",1);
    raw_pub_ = nh_.advertise<ublox::raw>("raw",1);
    Ephem_pub_ = nh_.advertise<ublox::Ephem>("ephem",1);
  }
ublox::Ublox ublox_;
private:
  ros::NodeHandle nh_;
  ros::Time now_;
  string port_;
  int baudrate_;
  ros::Publisher navsatfix_pub_;
  ros::Publisher gpsfix_pub_;
  ros::Publisher Velned_pub_;
  ros::Publisher raw_pub_;
  ros::Publisher Ephem_pub_;

  
};

bool didpoll;

int main (int argc, char** argv) {
  ros::init(argc, argv, "ublox_node");

  UbloxNode ublox_node;
  ublox_node.setup();
  ublox_node.ublox_.SetPortConfiguration(true,true,false,false);
  ublox_node.ublox_.ConfigureMessageRate(0x01,0x02,1);
  ublox_node.ublox_.ConfigureMessageRate(0x01,0x06,1);
  ublox_node.ublox_.ConfigureMessageRate(0x01,0x03,1);
  ublox_node.ublox_.ConfigureMessageRate(0x01,0x12,1);
  ublox_node.ublox_.ConfigureMessageRate(0x02,0x10,1);
  ublox_node.ublox_.ConfigureMessageRate(0x0B,0x31,1);
  ublox_node.ublox_.ConfigureNavigationParameters(2,3);

  didpoll = ublox_node.ublox_.PollIniAid();
  didpoll = ublox_node.ublox_.PollNavigationParamterConfiguration();
  didpoll = ublox_node.ublox_.PollEphem();

  ros::spin();



  return 0;
}
