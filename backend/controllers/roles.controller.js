// put your business logic using method sequalize
const readRolesMethod = async (req, res) => {
  const roles = await req.context.models.roles.findAll();
  return res.send(roles); 
}

//filter pencarian data
const findRolesMethod = async (req, res) => {
  const roles = await req.context.models.roles.findByPk(
    req.params.roleId,
  );
  return res.send(roles);
};


//tambah data
const addRolesMethod = async (req, res) => {
  const {role_name} = req.body;
  const roles = await req.context.models.roles.create({
    role_name: role_name,
  });
  return res.send(roles);
};



//ubah data
// Change everyone without a last name to "Doe"
const editRolesMethod = async (req, res) => {
  const {role_name} = req.body;
  const roles =  await req.context.models.roles.update({    
      role_name: role_name,
   }, {
      where: { role_id: req.params.roleId }
        });
      return res.sendStatus(200);
};

//hapus data
const deleteRolesMethod = async (req, res) => {
  const result = await req.context.models.roles.destroy({
    where: { role_id: req.params.roleId },
  });

  return res.send(true);
};



// Gunakan export default agar semua function bisa dipakai di file lain.
export default{
  readRolesMethod,
  findRolesMethod,
  addRolesMethod,
  deleteRolesMethod,
  editRolesMethod
}