.class public final enum Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;
.super Ljava/lang/Enum;
.source "LoadedTypeInitializer.java"

# interfaces
.implements Lnet/bytebuddy/implementation/LoadedTypeInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/LoadedTypeInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;",
        ">;",
        "Lnet/bytebuddy/implementation/LoadedTypeInitializer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    .line 58
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;
    .locals 1

    .line 58
    sget-object v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    return-object v0
.end method


# virtual methods
.method public isAlive()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 70
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method