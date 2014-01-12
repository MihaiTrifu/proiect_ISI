<%@ Page Title="" Language="C#" MasterPageFile="~/Director/Director_main.master" AutoEventWireup="true" CodeBehind="Dir_personalModifyDaily.aspx.cs" Inherits="TimeSheet.Director.Div_personalModifyDaily" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        
    </aside>
        <asp:Panel ID="Panel7" runat="server" style="z-index: 1; left: 128px; top: 172px; position: absolute; height: 104px; width: 185px; margin-left: 553px; bottom: 275px;">
            <br />
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Button ID="monthlyViewButton" runat="server" Font-Bold="True" Font-Size="XX-Small" OnClick="monthlyViewButton_Click" Text="Montly" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="addRowsButton0" runat="server" Font-Bold="True" Font-Size="XX-Small" Text="Add Rows" OnClick="addRowsButton0_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="deleteButton" runat="server" Font-Bold="True" Font-Size="XX-Small" OnClick="deleteButton_Click" Text="Delete Selection" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="saveButton" runat="server" Font-Bold="True" Font-Size="XX-Small" Text="Save" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="sendMailButton" runat="server" Font-Bold="True" Font-Size="XX-Small" Text="Send Mail" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="ExitButton" runat="server" BackColor="#999966" Font-Bold="True" Font-Size="XX-Small" ForeColor="Red" Text="Exit" OnClick="ExitButton_Click" />
                    </td>
                </tr>
            </table>
            <br />
    </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" style="margin-bottom: 0px; position: relative; top: -129px; left: 193px; height: 65px; width: 158px;">
            <asp:Label ID="Label7" runat="server" Text="Hours: " style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667"></asp:Label>
            <asp:Label ID="hoursLabel" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; color: #FF0000" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667" Text="Extra hours:"></asp:Label>
            &nbsp;<asp:Label ID="extraHoursLabel" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; color: #FF0000" Text="Label"></asp:Label>
    </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" style="position: relative; top: -182px; left: -4px; height: 79px; width: 178px;">
            <asp:Label ID="Label1" runat="server" Text="Year:" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667"></asp:Label>
            <asp:Label ID="yearLabel" runat="server" CssClass="error" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; font-style: italic; color: #E80C4D;" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667" Text="Month:"></asp:Label>
            <asp:Label ID="monthLabel" runat="server" CssClass="error" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; font-style: italic; color: #E80C4D;" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667" Text="Day:"></asp:Label>
            <asp:Label ID="dayLabel" runat="server" CssClass="error" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; font-style: italic; color: #E80C4D;" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667" Text="Status:"></asp:Label>
            <asp:Label ID="statusLabel" runat="server" CssClass="error" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; font-style: normal;" Text="Label"></asp:Label>
            <br />
        </asp:Panel>

        <asp:Panel ID="PanelTabell" runat="server" style="position: relative; top: -170px; left: 10px; height: 671px; width: 526px; margin-bottom: 79px;">
            <table style="width: 100%">
                <tr>
                    <td style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; color: #339933; text-align: center; width: 159px; height: 23px;"><span style="font-weight: bold; color: #339933">Time Slot</span></td>
                    <td style="font-family: 'Book Antiqua'; font-size: medium; text-align: center; width: 258px; height: 23px;"><span style="color: #339933"><b>Activity</b></span></span></td>
                    <td style="font-family: 'Book Antiqua'; font-size: medium; color: #339933; text-align: center; border-left-color: #A0A0A0; border-right-color: #C0C0C0; border-top-color: #A0A0A0; border-bottom-color: #C0C0C0; padding: 1px; height: 23px;"><b>Delete</b></td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin1" runat="server" Height="16px" Width="61px">
                             <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd1" runat="server" style="margin-top: 3px" Height="16px" Width="61px">
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity1" runat="server" Height="26px" Width="222px">
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin2" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                        
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd2" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity2" runat="server" Height="26px" Width="222px" Enabled="false">                     
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete2" runat="server" Enabled="false"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin3" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                           
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd3" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                          
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity3" runat="server" Height="26px" Width="222px" Enabled="false">
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete3" runat="server" Enabled="false"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin4" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                          
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd4" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                           
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity4" runat="server" Height="26px" Width="222px" Enabled="false">
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete4" runat="server" Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin5" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                          
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd5" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                          
                       </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity5" runat="server" Height="26px" Width="222px" Enabled="false">
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete5" runat="server" Enabled="false"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin6" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>   
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd6" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                             <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                         
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity6" runat="server" Height="26px" Width="222px" Enabled="false">
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete6" runat="server" Enabled="false"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin7" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                             <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>   
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd7" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>    
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity7" runat="server" Height="26px" Width="222px" Enabled="false">
                    </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete7" runat="server" Enabled="false"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin8" runat="server" Height="16px" Width="61px" Enabled="false">
                             <asp:ListItem>-</asp:ListItem>
                             <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                           
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd8" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>                           
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity8" runat="server" Height="26px" Width="222px" Enabled="false">
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete8" runat="server" Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin9" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>   
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd9" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>   
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity9" runat="server" Height="26px" Width="222px" Enabled="false">   
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete9" runat="server" Enabled="false"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin10" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>   
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd10" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>   
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity10" runat="server" Height="26px" Width="222px" Enabled="false">
                    </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete10" runat="server" Enabled="false"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin11" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>   
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd11" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>  
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:DropDownList ID="activity11" runat="server" Height="26px" Width="222px" Enabled="false">
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px">
                        <asp:CheckBox ID="delete11" runat="server" Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:DropDownList ID="timeBegin12" runat="server" Height="16px" Width="61px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>   
                        </asp:DropDownList>
                        <asp:DropDownList ID="timeEnd12" runat="server" Height="16px" style="margin-top: 3px" Width="59px" Enabled="false">
                            <asp:ListItem>-</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>  
                        </asp:DropDownList>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px" Enabled="false">
                        <asp:DropDownList ID="activity12" runat="server" Height="26px" Width="222px" Enabled="false">
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: center; height: 25px" >
                        <asp:CheckBox ID="delete12" runat="server" Enabled="false" />
                    </td>
                </tr>
            </table>
            </asp:Table>
        </asp:Panel>

</asp:Content>


