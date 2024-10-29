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

package wiredp2pnetwork.simulations;
package inet.showcases.visualizer.canvas.transportconnection;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.visualizer.common.IntegratedVisualizer;
import inet.node.inet.StandardHost;

network WiredMeshNetwork
{
    @display("bgb=596,373");
    
    submodules:
        host1: StandardHost {
            @display("p=296,50");
        }
        host2: StandardHost {
            @display("p=78,133");
        }
        host3: StandardHost {
            @display("p=487,133");
        }
        host4: StandardHost {
            @display("p=78,233");
        }
        host5: StandardHost {
            @display("p=487,233");
        }
        
        configurator: Ipv4NetworkConfigurator {
            @display("p=109,290");
        }
        visualizer: IntegratedVisualizer {
            @display("p=207,290");
        }
    connections:
        host1.ethg++ <--> Eth100M <--> host2.ethg++; 
        host1.ethg++ <--> Eth100M <--> host3.ethg++; 
        host1.ethg++ <--> Eth100M <--> host4.ethg++; 
        host1.ethg++ <--> Eth100M <--> host5.ethg++; 
        host2.ethg++ <--> Eth100M <--> host3.ethg++;
        host2.ethg++ <--> Eth100M <--> host4.ethg++;
        host2.ethg++ <--> Eth100M <--> host5.ethg++;
        host3.ethg++ <--> Eth100M <--> host4.ethg++;
        host3.ethg++ <--> Eth100M <--> host5.ethg++;
        host4.ethg++ <--> Eth100M <--> host5.ethg++;
}
