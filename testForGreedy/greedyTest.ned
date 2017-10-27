//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package recording.testForGreedy;

import inet.common.figures.DelegateSignalConfigurator;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.aodv.AODVRouter;
import inet.node.greedy.GREEDYRouter;
import inet.physicallayer.idealradio.IdealRadioMedium;
import inet.visualizer.integrated.IntegratedCanvasVisualizer;


//
// TODO auto-generated type
//
network GreedyBasicTest
{
    parameters:
        int n_hosts;
        @display("bgb=500,500");

        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=420,20; anchor=w; font=,20; textFormat="packets received: %g"; initialValue=0);
        @statistic[rcvdPk](source=host5_rcvdPk; record=figure(count); targetFigure=rcvdPkText);
        @signal[host5_rcvdPk];
        @delegatesignal[rcvdPk](source=host5.udpApp[0].rcvdPk; target=host5_rcvdPk);
    submodules:
        //host[n_hosts]: GREEDYRouter {//greedyRouterHost[n_hosts]
        //    @display("p=157,99");
        //}
        host0: GREEDYRouter {//greedyRouterHost[n_hosts]
            @display("p=132,42");
        }
        host1: GREEDYRouter {//greedyRouterHost[n_hosts]
            @display("p=244,123");
        }
        host2: GREEDYRouter {//greedyRouterHost[n_hosts]
            @display("p=373.96802,61.488003");
        }
        host3: GREEDYRouter {//greedyRouterHost[n_hosts]
            @display("p=450.57602,232.848");
        }
        //host4: GREEDYRouter {//greedyRouterHost[n_hosts]
        //    @display("p=463.68002,201.6");
        //}
        host5: GREEDYRouter {//greedyRouterHost[n_hosts]
            @display("p=283.24802,332.64");
        }
        configurator: IPv4NetworkConfigurator {
            @display("p=55,123");
        }
        radioMedium: IdealRadioMedium {
            @display("p=55,52");
        }
        //aodvRouterHost[n_hosts]: AODVRouter {
        //    @display("p=178,178");
        //}
        integratedCanvasVisualizer: IntegratedCanvasVisualizer {
            @display("p=55,181");
        }
        delegateSignalConfigurator: DelegateSignalConfigurator {
            @display("p=56,233");
        }
}
