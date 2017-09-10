#include <fstream>
#include <iostream>
#include <string>
#include <math.h>
#include <vector>
#include <iostream>

using namespace std;

class Profile {

	private: 

		double errorMargin;
	 
		//vector input is (num of motion sensors)
		double pairwiseCompare(const vector<double> &v) {

			double sum = 0;

			for(int i = 0; i < numMotionSensor; ++i) {
				sum += abs(v[i] - v[(i+1) % numMotionSensor]);
			}

			return sum / numMotionSensor;

		}

		double analyzeProfile(const vector<vector<double>>& data) {

			double sum = 0;

			for(auto &v : data) {
				sum += pairwiseCompare(v);
			}

			return sum / (data.size());

		}

	public: 

		Profile(const vector<vector<double>>& data): errorMargin(analyzeProfile(data)) {;}

		Profile(const Profile &b): errorMargin(b.getError()) {;}

		double getError() const {
			return errorMargin;
		}

	
	const static int numMotionSensor; 
};

const int Profile::numMotionSensor = 3;



