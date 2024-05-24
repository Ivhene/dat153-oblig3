.class public final enum Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;
.super Ljava/lang/Enum;
.source "JavaDispatcher.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 425
    new-instance v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    .line 420
    filled-new-array {v0}, [Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;->$VALUES:[Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 420
    const-class v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;
    .locals 1

    .line 420
    sget-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;->$VALUES:[Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker$CreationAction;->run()Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;
    .locals 1

    .line 431
    invoke-static {}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->invoker()Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    move-result-object v0

    return-object v0
.end method
