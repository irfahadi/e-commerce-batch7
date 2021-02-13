const createUsersAddress = async (req, res, next) => {
  const { user_id, user_name, user_email, user_password, address } = req.body;
  let userId = null;

  if (user_id === null || user_id === undefined) {
    userId = await req.context.model.address.create({
        user_name: user_name,
        user_password: user_password,
        user_email: user_email,
      })
      .catch((error) => {
        return res.send(
          JSON.stringify({
            name: error.name,
            message: error.message,
          })
        );
      });
  }
  if (userId.user_id !== null) {
    address.map(async (el) => {
      await req.context.models.address.create({
        addr_id: el.addr_id,
        addr_email: el.addr_email,
        addr_fullname: el.addr_fullname,
        addr_phone_number: el.addr_phone_number,
        addr_zipcode: el.addr_zipcode,
        addr_street1: el.addr_street1,
        addr_street2: el.addr_street2,
        add_city_id: el.add_city_id,
        add_user_id: userId.add_user_id
      });
    });
  }
  next();
};

export default {
  createUsersAddress
};
