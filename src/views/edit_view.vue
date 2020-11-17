<template>
  <div>
    <div class="wrapper">
      <Menu />
      <div class="content-wrapper">
        <div class="card text-center">
          <div class="card-header"></div>
          <div class="card-body">
            <form action="#">
              <div class="row">
                <div class="col-6 text-right">
                  <label for="exampleFormControlSelect1">รุ่น</label>
                </div>
                <div class="col-6 text-left">
                  <label for="exampleFormControlSelect1">ปี</label>
                </div>
              </div>
              <div class="row">
                <div class="col-6 x">
                  <div class="form-group">
                    <select
                      class="form-control manu mx-auto x"
                      id="exampleFormControlSelect1"
                    >
                      <option style="color: blue" value="" selected>-</option>
                      <option value="Accord">Accord</option>
                      <option value="Airwave">Airwave</option>
                      <option value="BR-V">BR-V</option>
                      <option value="Brio">Brio</option>
                      <option value="City">City</option>
                      <option value="Civic">Civic</option>
                      <option value="CR-V">CR-V</option>
                      <option value="CR-X del Sol">CR-X del Sol</option>
                      <option value="CR-Z">CR-Z</option>
                      <option value="e">e</option>
                      <option value="Freed">Freed</option>
                      <option value="HR-V">HR-V</option>
                      <option value="Integra">Integra</option>
                      <option value="Jazz">Jazz</option>
                      <option value="Legend">Legend</option>
                      <option value="Mobilio">Mobilio</option>
                      <option value="N-BOX">N-BOX</option>
                      <option value="N-ONE">N-ONE</option>
                      <option value="NSX">NSX</option>
                      <option value="Odyssey">Odyssey</option>
                      <option value="Prelude">Prelude</option>
                      <option value="S2000">S2000</option>
                      <option value="STEPWGN SPADA">STEPWGN SPADA</option>
                      <option value="Stream">Stream</option>
                      <option value="Today">Today</option>
                    </select>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group">
                    <select
                      class="form-control manu mx-auto y"
                      id="exampleFormControlSelect1"
                    >
                      <option style="color: blue" value="" selected>------------ เลือกปีรถ --------------</option>
                      <option value="2020">2020</option>
                      <option value="2019">2019</option>
                      <option value="2018">2018</option>
                      <option value="2017">2017</option>
                      <option value="2016">2016</option>
                      <option value="2015">2015</option>
                      <option value="2014">2014</option>
                      <option value="2013">2013</option>
                      <option value="2012">2012</option>
                      <option value="2011">2011</option>
                      <option value="2010">2010</option>
                      <option value="2009">2009</option>
                      <option value="2008">2008</option>
                      <option value="2007">2007</option>
                      <option value="2006">2006</option>
                      <option value="2005">2005</option>
                      <option value="2004">2004</option>
                      <option value="2003">2003</option>
                      <option value="2002">2002</option>
                      <option value="2001">2001</option>
                      <option value="2000">2000</option>
                      <option value="1999">1999</option>
                      <option value="1998">1998</option>
                      <option value="1997">1997</option>
                      <option value="1996">1996</option>
                      <option value="1995">1995</option>
                      <option value="1994">1994</option>
                      <option value="1993">1993</option>
                      <option value="1992">1992</option>
                      <option value="1991">1991</option>
                      <option value="1990">1990</option>
                      <option value="1989">1989</option>
                      <option value="1988">1988</option>
                      <option value="1987">1987</option>
                      <option value="1986">1986</option>
                      <option value="1985">1985</option>
                      <option value="1984">1984</option>
                      <option value="1983">1983</option>
                      <option value="1982">1982</option>
                      <option value="1981">1981</option>
                      <option value="1980">1980</option>
                      <option value="1979">1979</option>
                      <option value="1978">1978</option>
                      <option value="1977">1977</option>
                      <option value="1976">1976</option>
                      <option value="1975">1975</option>
                      <option value="1974">1974</option>
                      <option value="1973">1973</option>
                      <option value="1972">1972</option>
                      <option value="1971">1971</option>
                      <option value="1970">1970</option>
                      <option value="1969">1969</option>
                      <option value="1968">1968</option>
                      <option value="1967">1967</option>
                      <option value="1966">1966</option>
                      <option value="1965">1965</option>
                      <option value="1964">1964</option>
                      <option value="1963">1963</option>
                      <option value="1962">1962</option>
                      <option value="1961">1961</option>
                      <option value="1960">1960</option>
                      <option value="1959">1959</option>
                      <option value="1958">1958</option>
                      <option value="1957">1957</option>
                      <option value="1956">1956</option>
                      <option value="1955">1955</option>
                      <option value="1954">1954</option>
                      <option value="1953">1953</option>
                      <option value="1952">1952</option>
                      <option value="1951">1951</option>
                      <option value="1950">1950</option>
                      <option value="1949">1949</option>
                      <option value="1948">1948</option>
                      <option value="1947">1947</option>
                      <option value="1946">1946</option>
                      <option value="1945">1945</option>
                      <option value="1944">1944</option>
                      <option value="1943">1943</option>
                      <option value="1942">1942</option>
                      <option value="1941">1941</option>
                      <option value="1940">1940</option>
                      <option value="1939">1939</option>
                      <option value="1938">1938</option>
                      <option value="1937">1937</option>
                      <option value="1936">1936</option>
                      <option value="1935">1935</option>
                      <option value="1934">1934</option>
                      <option value="1933">1933</option>
                      <option value="1932">1932</option>
                      <option value="1931">1931</option>
                      <option value="1930">1930</option>
                    </select>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-6 text-right mt-3">
                  <label for="exampleInputEmail1">รายละเอียดรุ่น</label>
                </div>
                <div class="col-6 text-left mt-3">
                  <label for="exampleInputEmail1">ขนาดเครื่องยนต์</label>
                </div>
              </div>
              <div class="row">
                <div class="col-6">
                  <div class="form-group">
                    <input
                      type="text"
                      class="form-control manu mx-auto x"
                      id="exampleInputEmail1"
                    />
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group">
                    <input
                      type="number"
                      class="form-control manu mx-auto y"
                      id="exampleInputEmail1"
                    />
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-6 text-right mt-3">
                  <label for="exampleFormControlSelect1">ระบบเกียร์</label>
                </div>
                <div class="col-6 text-left mt-3">
                  <label for="exampleFormControlSelect1">จำนวนที่นั่ง</label>
                </div>
              </div>
              <div class="row">
                <div class="col-6">
                  <div class="form-group">
                    <select
                      class="form-control manu mx-auto x"
                      id="exampleFormControlSelect1"
                    >
                      <option style="color: blue" value="" selected>--------- เลือกระบบเกียร์ ---------</option>
                      <option value="Auto">เกียร์อัตโนมัติ</option>
                      <option value="Manual">เกียร์ธรรมดา</option>
                    </select>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group">
                    <select
                      class="form-control manu mx-auto y"
                      id="exampleFormControlSelect1"
                    >
                      <option style="color: blue" value="" selected>--------- เลือกจำนวนที่นั่ง ---------</option>
                      <option value="2">2</option>
                      <option value="5">5</option>
                      <option value="7">7</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-6 text-right mt-3">
                  <label for="exampleInputEmail1 x"> เลขไมล์ (กม.) </label>
                </div>
                <div class="col-6 text-left mt-3">
                  <label for="exampleFormControlSelect1">สี</label>
                </div>
              </div>
              <div class="row">
                <div class="col-6">
                  <div class="form-group">
                    <input
                      type="number"
                      class="form-control manu mx-auto x"
                      id="exampleInputEmail1"
                    />
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group">
                    <select
                      class="form-control manu mx-auto y"
                      id="exampleFormControlSelect1"
                    >
                      <option style="color: blue" value="" selected>-------------- เลือกสี -------------</option>
                      <option value="Accord">ขาว</option>
                      <option value="Airwave">แดง</option>
                      <option value="Accord">ดำ</option>
                      <option value="Airwave">น้ำเงิน</option>
                      <option value="Accord">เขียว</option>
                      <option value="Airwave">ม่วง</option>
                      <option value="Accord">ชมพู</option>
                      <option value="Airwave">ฟ้า</option>
                      <option value="Accord">เหลือง</option>
                      <option value="Airwave">บรอน</option>
                      <option value="Accord">ทอง</option>
                      <option value="Airwave">เทา</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-6 text-right mt-3">
                  <label for="exampleInputEmail1 x">ทะเบียน</label>
                </div>
                <div class="col-6 text-left mt-3">
                  <label for="exampleFormControlSelect1">จังหวัด</label>
                </div>
              </div>
              <div class="row">
                <div class="col-6">
                  <div class="form-group">
                    <input
                      type="text"
                      class="form-control manu mx-auto x"
                      id="exampleInputEmail1"
                    />
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group">
                    <select
                      class="form-control manu mx-auto y"
                      id="exampleFormControlSelect1"
                    >
                      <option value="" selected>--------- เลือกจังหวัด ---------</option>
                      <option value="กรุงเทพมหานคร">กรุงเทพมหานคร</option>
                      <option value="กระบี่">กระบี่ </option>
                      <option value="กาญจนบุรี">กาญจนบุรี </option>
                      <option value="กาฬสินธุ์">กาฬสินธุ์ </option>
                      <option value="กำแพงเพชร">กำแพงเพชร </option>
                      <option value="ขอนแก่น">ขอนแก่น</option>
                      <option value="จันทบุรี">จันทบุรี</option>
                      <option value="ฉะเชิงเทรา">ฉะเชิงเทรา </option>
                      <option value="ชัยนาท">ชัยนาท </option>
                      <option value="ชัยภูมิ">ชัยภูมิ </option>
                      <option value="ชุมพร">ชุมพร </option>
                      <option value="ชลบุรี">ชลบุรี </option>
                      <option value="เชียงใหม่">เชียงใหม่ </option>
                      <option value="เชียงราย">เชียงราย </option>
                      <option value="ตรัง">ตรัง </option>
                      <option value="ตราด">ตราด </option>
                      <option value="ตาก">ตาก </option>
                      <option value="นครนายก">นครนายก </option>
                      <option value="นครปฐม">นครปฐม </option>
                      <option value="นครพนม">นครพนม </option>
                      <option value="นครราชสีมา">นครราชสีมา </option>
                      <option value="นครศรีธรรมราช">นครศรีธรรมราช </option>
                      <option value="นครสวรรค์">นครสวรรค์ </option>
                      <option value="นราธิวาส">นราธิวาส </option>
                      <option value="น่าน">น่าน </option>
                      <option value="นนทบุรี">นนทบุรี </option>
                      <option value="บึงกาฬ">บึงกาฬ</option>
                      <option value="บุรีรัมย์">บุรีรัมย์</option>
                      <option value="ประจวบคีรีขันธ์">ประจวบคีรีขันธ์ </option>
                      <option value="ปทุมธานี">ปทุมธานี </option>
                      <option value="ปราจีนบุรี">ปราจีนบุรี </option>
                      <option value="ปัตตานี">ปัตตานี </option>
                      <option value="พะเยา">พะเยา </option>
                      <option value="พระนครศรีอยุธยา">พระนครศรีอยุธยา </option>
                      <option value="พังงา">พังงา </option>
                      <option value="พิจิตร">พิจิตร </option>
                      <option value="พิษณุโลก">พิษณุโลก </option>
                      <option value="เพชรบุรี">เพชรบุรี </option>
                      <option value="เพชรบูรณ์">เพชรบูรณ์ </option>
                      <option value="แพร่">แพร่ </option>
                      <option value="พัทลุง">พัทลุง </option>
                      <option value="ภูเก็ต">ภูเก็ต </option>
                      <option value="มหาสารคาม">มหาสารคาม </option>
                      <option value="มุกดาหาร">มุกดาหาร </option>
                      <option value="แม่ฮ่องสอน">แม่ฮ่องสอน </option>
                      <option value="ยโสธร">ยโสธร </option>
                      <option value="ยะลา">ยะลา </option>
                      <option value="ร้อยเอ็ด">ร้อยเอ็ด </option>
                      <option value="ระนอง">ระนอง </option>
                      <option value="ระยอง">ระยอง </option>
                      <option value="ราชบุรี">ราชบุรี</option>
                      <option value="ลพบุรี">ลพบุรี </option>
                      <option value="ลำปาง">ลำปาง </option>
                      <option value="ลำพูน">ลำพูน </option>
                      <option value="เลย">เลย </option>
                      <option value="ศรีสะเกษ">ศรีสะเกษ</option>
                      <option value="สกลนคร">สกลนคร</option>
                      <option value="สงขลา">สงขลา </option>
                      <option value="สมุทรสาคร">สมุทรสาคร </option>
                      <option value="สมุทรปราการ">สมุทรปราการ </option>
                      <option value="สมุทรสงคราม">สมุทรสงคราม </option>
                      <option value="สระแก้ว">สระแก้ว </option>
                      <option value="สระบุรี">สระบุรี </option>
                      <option value="สิงห์บุรี">สิงห์บุรี </option>
                      <option value="สุโขทัย">สุโขทัย </option>
                      <option value="สุพรรณบุรี">สุพรรณบุรี </option>
                      <option value="สุราษฎร์ธานี">สุราษฎร์ธานี </option>
                      <option value="สุรินทร์">สุรินทร์ </option>
                      <option value="สตูล">สตูล </option>
                      <option value="หนองคาย">หนองคาย </option>
                      <option value="หนองบัวลำภู">หนองบัวลำภู </option>
                      <option value="อำนาจเจริญ">อำนาจเจริญ </option>
                      <option value="อุดรธานี">อุดรธานี </option>
                      <option value="อุตรดิตถ์">อุตรดิตถ์ </option>
                      <option value="อุทัยธานี">อุทัยธานี </option>
                      <option value="อุบลราชธานี">อุบลราชธานี</option>
                      <option value="อ่างทอง">อ่างทอง </option>
                      <option value="อื่นๆ">อื่นๆ</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 text-right mt-3 text-center" >
                  <label for="exampleInputEmail1 x">รายละเอียด</label>
                </div>
              </div>
              <div class="row ">
                <div class="col-4 offset-4 text-right mt-3 text-center">
                  <div class="form-group">
                    <textarea class="form-control te" id="exampleFormControlTextarea1" cols="40"></textarea>
                  </div>
                </div>
              </div>
              <div class="row ">
                <div class="col-4 offset-4 text-left mt-3 ">
                  <div class="form-group">
                    <label for="exampleFormControlFile1">Example file image</label>
                    <input type="file" multiple class="form-control-file" id="exampleFormControlFile1">
                  </div>
                </div>
              </div>
              <div class="row ">
                <div class="col-6 offset-3 text-center mt-3 ">
                  <div class="form-group">
                    <button type="submit" class="btn btn-success">Success</button>
                  </div>
                </div>
              </div>
            </form>
            <!-- <div class="row">
              <div class="col-4 mx-auto mt-5 mb-5">
                
                <div>
                  <form>
                    <div class="form-group">
                      <label for="exampleFormControlSelect1">รุ่น</label>
                      <select
                        class="form-control"
                        id="exampleFormControlSelect1"
                      >
                        <option style="color: blue" value="" selected>-</option>
                        <option value="Accord">Accord</option>
                        <option value="Airwave">Airwave</option>
                        <option value="BR-V">BR-V</option>
                        <option value="Brio">Brio</option>
                        <option value="City">City</option>
                        <option value="Civic">Civic</option>
                        <option value="CR-V">CR-V</option>
                        <option value="CR-X del Sol">CR-X del Sol</option>
                        <option value="CR-Z">CR-Z</option>
                        <option value="e">e</option>
                        <option value="Freed">Freed</option>
                        <option value="HR-V">HR-V</option>
                        <option value="Integra">Integra</option>
                        <option value="Jazz">Jazz</option>
                        <option value="Legend">Legend</option>
                        <option value="Mobilio">Mobilio</option>
                        <option value="N-BOX">N-BOX</option>
                        <option value="N-ONE">N-ONE</option>
                        <option value="NSX">NSX</option>
                        <option value="Odyssey">Odyssey</option>
                        <option value="Prelude">Prelude</option>
                        <option value="S2000">S2000</option>
                        <option value="STEPWGN SPADA">STEPWGN SPADA</option>
                        <option value="Stream">Stream</option>
                        <option value="Today">Today</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleFormControlSelect1">ปี</label>
                      <select
                        class="form-control"
                        id="exampleFormControlSelect1"
                      >
                        <option style="color: blue" value="" selected>-</option>
                        <option value="2020">2020</option>
                        <option value="2019">2019</option>
                        <option value="2018">2018</option>
                        <option value="2017">2017</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                        <option value="1977">1977</option>
                        <option value="1976">1976</option>
                        <option value="1975">1975</option>
                        <option value="1974">1974</option>
                        <option value="1973">1973</option>
                        <option value="1972">1972</option>
                        <option value="1971">1971</option>
                        <option value="1970">1970</option>
                        <option value="1969">1969</option>
                        <option value="1968">1968</option>
                        <option value="1967">1967</option>
                        <option value="1966">1966</option>
                        <option value="1965">1965</option>
                        <option value="1964">1964</option>
                        <option value="1963">1963</option>
                        <option value="1962">1962</option>
                        <option value="1961">1961</option>
                        <option value="1960">1960</option>
                        <option value="1959">1959</option>
                        <option value="1958">1958</option>
                        <option value="1957">1957</option>
                        <option value="1956">1956</option>
                        <option value="1955">1955</option>
                        <option value="1954">1954</option>
                        <option value="1953">1953</option>
                        <option value="1952">1952</option>
                        <option value="1951">1951</option>
                        <option value="1950">1950</option>
                        <option value="1949">1949</option>
                        <option value="1948">1948</option>
                        <option value="1947">1947</option>
                        <option value="1946">1946</option>
                        <option value="1945">1945</option>
                        <option value="1944">1944</option>
                        <option value="1943">1943</option>
                        <option value="1942">1942</option>
                        <option value="1941">1941</option>
                        <option value="1940">1940</option>
                        <option value="1939">1939</option>
                        <option value="1938">1938</option>
                        <option value="1937">1937</option>
                        <option value="1936">1936</option>
                        <option value="1935">1935</option>
                        <option value="1934">1934</option>
                        <option value="1933">1933</option>
                        <option value="1932">1932</option>
                        <option value="1931">1931</option>
                        <option value="1930">1930</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">รายละเอียดรุ่น</label>
                      <input
                        type="text"
                        class="form-control"
                        id="exampleInputEmail1"
                      />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">ขนาดเครื่องยนต์</label>
                      <input
                        type="number"
                        class="form-control"
                        id="exampleInputEmail1"
                      />
                    </div>
                    <div class="form-group">
                      <label for="exampleFormControlSelect1">ระบบเกียร์</label>
                      <select
                        class="form-control"
                        id="exampleFormControlSelect1"
                      >
                        <option style="color: blue" value="" selected>-</option>
                        <option value="Auto">เกียร์อัตโนมัติ</option>
                        <option value="Manual">เกียร์ธรรมดา</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleFormControlSelect1"
                        >จำนวนที่นั่ง</label
                      >
                      <select
                        class="form-control"
                        id="exampleFormControlSelect1"
                      >
                        <option style="color: blue" value="" selected>-</option>
                        <option value="2">2</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="7">7</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1"> เลขไมล์ (กม.) </label>
                      <input
                        type="number"
                        class="form-control"
                        id="exampleInputEmail1"
                      />
                    </div>
                    <div class="form-group">
                      <label for="exampleFormControlSelect1">สี</label>
                      <select
                        class="form-control"
                        id="exampleFormControlSelect1"
                      >
                        <option style="color: blue" value="" selected>-</option>
                        <option value="Accord">2</option>
                        <option value="Airwave">4</option>
                        <option value="Accord">5</option>
                        <option value="Airwave">7</option>
                      </select>
                    </div>
                  </form>
                </div>
                
              </div>
            </div> -->
          </div>
          <div class="card-footer text-muted"></div>
        </div>
      </div>
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
      </aside>
    </div>
  </div>
</template>

<script>
import Menu from'@/components/Menu'
export default {
  methods:{
    ci_home(){
      window.location.href = "/main";
    },
    ci_contact(){
      window.location.href = "/main";
    },
    ci_promotion(){
      window.location.href = "/main";
    }
  },
  components:{Menu}

};

</script>

<style>
.manu {
  width: 30%;
}
.x {
  float: right;
}
.y {
  float: left;
}
.te {
  width: 100%;
  height: 500px;
}
</style>