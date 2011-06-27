/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is OpenEMRConnect.
 *
 * The Initial Developer of the Original Code is International Training &
 * Education Center for Health (I-TECH) <http://www.go2itech.org/>
 *
 * Portions created by the Initial Developer are Copyright (C) 2011
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * ***** END LICENSE BLOCK ***** */
package ke.go.moh.oec.mpi.list;

import java.sql.Connection;
import java.util.Date;
import ke.go.moh.oec.Visit;
import ke.go.moh.oec.mpi.Sql;

/**
 * MPI Methods to operate on a list of visits.
 *
 * @author Jim Grace
 */
public class VisitList {

    public static void update(Connection conn, int visitTypeId, int personId, Visit visit) {
        if (visit != null && visit.getVisitDate() != null) {
            String addressId = Sql.getAddressId(conn, visit.getAddress());
            Date visitDate = visit.getVisitDate();
            String sql = "SELECT * FROM visit WHERE visit_type_id = " + visitTypeId
                    + " AND person_id = " + personId + " AND visit_date = " + Sql.quote(visitDate);
            if (!Sql.resultExists(conn, sql)) {
                sql = "INSERT INTO visit (visit_type_id, person_id, address_id, visit_date, date_created) values (\n"
                        + visitTypeId + ", " + personId + ", " + addressId + ", " + Sql.quote(visitDate) + ", NOW());";
                Sql.execute(conn, sql);
            }
        }
    }
}
