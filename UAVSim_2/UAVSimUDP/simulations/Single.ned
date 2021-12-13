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

package fanetsim.simulations;

//import inet.linklayer.ieee802154.Ieee802154NarrowbandNic;
import inet.common.figures.DelegateSignalConfigurator;
//import inet.networklayer.configurator.ipv6.FlatNetworkConfigurator6;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;

import ned.DatarateChannel;


network Single
{
    parameters:

        //double per = default(0);
        //        @display("bgb=232,193");
        string hostType = default("WirelessHost");
        string mediumType = default("IdealRadioMedium");

        @display("bgb=1024,800;bgg=100,1,grey95");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);
//        @display("bgb=650,500;bgg=100,1,grey95");
//        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="Packets Received: %g"; initialValue=0);
        @statistic[rcvdPk](source=hostB1.udpApp[0].rcvdPk; record=figure(count); targetFigure=rcvdPkText);
//        @statistic[rcvdPkSrc](title="packets received per source"; source=rcvdPk; record="groupCount(sourceAddr)"; interpolationmode=none);




        @signal[hostB_rcvdPk];
        @delegatessignal[rcvdPk](source=hostB1.udpApp[0].rcvdPk; target=hostB1_rcvdPK);

//        @figure[sentPkText](type=indicatorText; pos=400,40; anchor=w; font=,18; textFormat=" Sent Packets: %g"; initialValue=0);
//        @statistic[sentPk](source=hostA_sentPk; record=figure(count); targetFigure=sentPkText);
//        @signal[hostA_sentPk];
//        @delegatessignal[sentPk](source=hostA.udpApp[0].sentPk; target=hostA_sentPK);
//types:
//        channel C extends DatarateChannel
//        {
//            datarate = 10Mbps;
//            delay = 0.1us;
//            per = per;
//        }

    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=580,125");
        }
        configurator: IPv4NetworkConfigurator {
            @display("p=580,200");
        }
        //        configurator: FlatNetworkConfigurator6 {
        //            @display("p=580,200");
        //        }
        radioMedium: <mediumType> like IRadioMedium {
            @display("p=580,275");
        }
        hostA: <hostType> like INetworkNode {
            //@display("p=87.696,331.63202");
            @display("p=472.752,263.712;i=device/drone");
        }
        hostB1: <hostType> like INetworkNode {
            @display("p=450,125;i=device/drone");
            //@display("p=450,325");
        }
        //        hostB2: <hostType> like INetworkNode {
        //            @display("p=525.816,70.752;i=device/drone");
        //            //@display("p=450,325");
        //        }
        //         hostB1: <hostType> like INetworkNode {
        //            @display("p=205.824,200;i=device/drone");
        //            //@display("p=450,325");
        ////        }
        hostC: <hostType> like INetworkNode {
            //@display("p=87.696,331.63202");
            @display("p=350,125;i=device/drone");
        }
        hostD: <hostType> like INetworkNode {
            @display("p=450,325;i=device/drone");
            //@display("p=450,325");
        }
        hostE: <hostType> like INetworkNode {
            @display("p=286.272,264.096;i=device/drone");
            //@display("p=450,325");
        }
        hostF: <hostType> like INetworkNode {
            @display("p=323.208,548.328;i=device/droneh");
            //@display("p=450,325");
        }
//        hostF2: <hostType> like INetworkNode {
//            @display("p=273.36002,493.656;i=device/droneh");
//            //@display("p=450,325");
//        }


        hostG: <hostType> like INetworkNode {
            @display("p=520.992,604.60803;i=device/droneh");
            //@display("p=450,325");
        }
        hostH: <hostType> like INetworkNode {
            @display("p=151.15201,549.936;i=device/droneh");
            //@display("p=450,325");
        }
        hostI: <hostType> like INetworkNode {
            @display("p=731.64,492.048;i=device/droneh");
            //@display("p=450,325");
        }
        hostQ: <hostType> like INetworkNode {
            @display("p=96.48,274.968;i=device/droneh");
           //@display("p=450,325");
        }
//        hostR: <hostType> like INetworkNode {
//            @display("p=380.01602,205.632;i=device/droneh");
//            //@display("p=450,325");
//        }
//        hostS: <hostType> like INetworkNode {
//            @display("p=324.57602,355.824;i=device/droneh");
//            //@display("p=450,325");
//        }
////
//        hostT: <hostType> like INetworkNode {
//            @display("p=557.976,377.88;i=device/droneh");
//            //@display("p=450,325");
//        }
//
//        hostU: <hostType> like INetworkNode {
//            @display("p=205.824,377.88;i=device/droneh");
//            //@display("p=450,325");
//        }
//        hostV: <hostType> like INetworkNode {
//            @display("p=680.184,424.512;i=device/droneh");
//            //@display("p=450,325");
//        }

}
