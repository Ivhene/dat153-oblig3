.class public final enum Lnet/bytebuddy/agent/VirtualMachine$Resolver;
.super Ljava/lang/Enum;
.source "VirtualMachine.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/VirtualMachine$Resolver;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Class<",
        "+",
        "Lnet/bytebuddy/agent/VirtualMachine;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/VirtualMachine$Resolver;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/VirtualMachine$Resolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 146
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$Resolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$Resolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/VirtualMachine$Resolver;->INSTANCE:Lnet/bytebuddy/agent/VirtualMachine$Resolver;

    .line 141
    filled-new-array {v0}, [Lnet/bytebuddy/agent/VirtualMachine$Resolver;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/VirtualMachine$Resolver;->$VALUES:[Lnet/bytebuddy/agent/VirtualMachine$Resolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$Resolver;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 141
    const-class v0, Lnet/bytebuddy/agent/VirtualMachine$Resolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/VirtualMachine$Resolver;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/VirtualMachine$Resolver;
    .locals 1

    .line 141
    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$Resolver;->$VALUES:[Lnet/bytebuddy/agent/VirtualMachine$Resolver;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/VirtualMachine$Resolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/VirtualMachine$Resolver;

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/bytebuddy/agent/VirtualMachine;",
            ">;"
        }
    .end annotation

    .line 153
    :try_start_0
    const-string v0, "com.sun.jna.Platform"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 157
    const-string v0, "java.vm.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;

    goto :goto_0

    :cond_0
    const-class v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;

    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Optional JNA dependency is not available"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lnet/bytebuddy/agent/VirtualMachine$Resolver;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
