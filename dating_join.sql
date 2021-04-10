select my_contacts.first_name, my_contacts.last_name, zip_code.postal_code, status.status, interests.interest, seeking.seeking
from my_contacts left join zip_code
on my_contacts.zip_code = zip_code.zip_code
left join status
on my_contacts.status_id = status.status_id
left join interests
on my_contacts.contact_id = interests.interest_id
left join seeking
on my_contacts.contact_id = seeking.seeking_id