INSERT INTO s_permission (id, permission_value, permission_label) VALUES
  ('viewrekening', 'VIEW_REKENING', 'Lihat Data Rekening'),
  ('viewmutasi', 'VIEW_MUTASI', 'Lihat Data Mutasi'),
  ('edittransfer', 'EDIT_TRANSFER', 'Input Transfer');

INSERT INTO s_role (id, description, name) VALUES
  ('staff', 'STAFF', 'Staff'),
  ('manager', 'MANAGER', 'Manager');

INSERT INTO s_role_permission (id_role, id_permission) VALUES
  ('staff', 'viewrekening'),
  ('staff', 'viewmutasi'),
  ('manager', 'viewrekening'),
  ('manager', 'viewmutasi'),
  ('manager', 'edittransfer');

INSERT INTO s_user (id, username, id_role) VALUES
  ('u001', 'endy@artivisi.com', 'staff');

INSERT INTO s_user (id, username, id_role) VALUES
  ('u002', 'endy.muhardin@gmail.com', 'manager');