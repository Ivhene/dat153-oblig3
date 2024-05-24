.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InjectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingInstrumentation;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingJna;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingUnsafe;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$UsingReflection;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;
    }
.end annotation


# virtual methods
.method public abstract resolve(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end method
