<template>
  <member-table
    :members="members"
    :get-all-members="getAllMembers"
    :update-organization-name="updateOrganizationName"
    :organization-name="organizationName"
  />
</template>
<script lang="ts">
import Vue, { PropOptions } from "vue";
export default Vue.extend({
  name: "MemberTablePage",
  components: {
    MemberTable
  },
  props: {
    members: {
      required: true
    } as PropOptions<Member[]>,
    getAllMembers: {
      required: true
    } as PropOptions<() => void>,
    updateOrganizationName: {
      required: true
    } as PropOptions<(organizationName) => void>,
    organizationName: {
      required: true
    } as PropOptions<string>
  }
});
</script>
