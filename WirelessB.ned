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

package recording;

import inet.node.inet.INetworkNode;

network WirelessB extends WirelessA
{
    submodules:
        hostR1: <hostType> like INetworkNode {
            @display("p=245.95201,103.824005");
        }
        hostR2: <hostType> like INetworkNode {
            @display("p=285.264,103.824005");
        }
        hostR3: <hostType> like INetworkNode {
            @display("p=348.768,64.512");
        }

}
