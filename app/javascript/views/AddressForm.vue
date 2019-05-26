<template>
<div>
    <mt-field label="username" placeholder="Input username" v-model="username"></mt-field>
    <mt-field label="email" placeholder="Input email" type="email" v-model="email"></mt-field>
    <mt-field label="password" placeholder="Input password" type="password" v-modal="password"></mt-field>
    <mt-field label="phone" placeholder="Input tel" type="tel" v-model="phone"></mt-field>
    <mt-field label="website" placeholder="Input website" type="url" v-model="website"></mt-field>
    <mt-field label="number" placeholder="Input number" type="number" v-model="number"></mt-field>
    <mt-field label="birthday" placeholder="Input birthday" type="date" v-model="birthday"></mt-field>
    <mt-field label="introduction" placeholder="introduction" type="textarea" rows="4" v-model="introduction"></mt-field>
</div>
</template>

<script>
export default {
    name: "AddressForm",
    data: () => {
        return {}
    },
    methods: {}
}
</script>
