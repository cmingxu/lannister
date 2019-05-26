<template>
<div>
    <mt-index-list>
        <mt-index-section index="A">
            <mt-cell title="Aaron"></mt-cell>
            <mt-cell title="Alden"></mt-cell>
            <mt-cell title="Austin"></mt-cell>
        </mt-index-section>
        <mt-index-section index="B">
            <mt-cell title="Baldwin"></mt-cell>
            <mt-cell title="Braden"></mt-cell>
        </mt-index-section>...
        <mt-index-section index="Z">
            <mt-cell title="Zack"></mt-cell>
            <mt-cell title="Zane"></mt-cell>
        </mt-index-section>
        <mt-field label="username" placeholder="Input username" v-model="username"></mt-field>
        <mt-field label="email" placeholder="Input email" type="email" v-model="email"></mt-field>
        <mt-field label="password" placeholder="Input password" type="password" v-modal="password"></mt-field>
        <mt-field label="phone" placeholder="Input tel" type="tel" v-model="phone"></mt-field>
        <mt-field label="website" placeholder="Input website" type="url" v-model="website"></mt-field>
        <mt-field label="number" placeholder="Input number" type="number" v-model="number"></mt-field>
        <mt-field label="birthday" placeholder="Input birthday" type="date" v-model="birthday"></mt-field>
        <mt-field label="introduction" placeholder="introduction" type="textarea" rows="4" v-model="introduction"></mt-field>
    </mt-index-list>
</div>
</template>

<script>
export default {
    name: "Settings",
    data: () => {
        return {};
    },
    methods: {
        foo: () => {}
    }
};
</script>
