class Thing
  def things
    []
  end

  def crazy_thing
    nil
  end

  def keyword(thing_name: 1)
    # Only available in ruby 2.0
  end

  def complex
    things.each do |thing|
      next if things.other.nil?
      thing.thing_roles.each do |thing_role|
        crazy_thing.thing_roles << thingRole.new(:role => thing_role.role, :inherited_from => thing_role.id)
      end
      user_thing.save!
    end

    things.each do |thing|
      thingRole.
        includes(:thing).
        where("#{thing.table_name}.user_id = ? AND #{thingRole.table_name}.inherited_from IN (?)", user.id, thing.thing_role_ids).
        each(&:destroy)
    end

    attr_name = attribute_key_name.to_s
    if attr_name == 'lastname'
      attr_name = "name"
    end

    return if things.length > (crazy_thing ? 1 : things.max { |thing| thing.number - crazy_thing.number })

    super(attr_name, *args)
  end

  def duplicate
    things.each do |thing|
      next if things.other.nil?
      thing.thing_roles.each do |thing_role|
        crazy_thing.thing_roles << thingRole.new(:role => thing_role.role, :inherited_from => thing_role.id)
      end
      user_thing.save!
    end

    things.each do |thing|
      thingRole.
        includes(:thing).
        where("#{thing.table_name}.user_id = ? AND #{thingRole.table_name}.inherited_from IN (?)", user.id, thing.thing_role_ids).
        each(&:destroy)
    end

    attr_name = attribute_key_name.to_s
    if attr_name == 'lastname'
      attr_name = "name"
    end

    return if things.length > (crazy_thing ? 1 : things.max { |thing| thing.number - crazy_thing.number })

    super(attr_name, *args)
  end

end
