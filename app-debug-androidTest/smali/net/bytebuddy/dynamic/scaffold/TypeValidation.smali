.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
.super Ljava/lang/Enum;
.source "TypeValidation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

.field public static final enum DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

.field public static final enum ENABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;


# instance fields
.field private final enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->ENABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 41
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    const-string v4, "DISABLED"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 31
    filled-new-array {v0, v1}, [Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->enabled:Z

    .line 55
    return-void
.end method

.method public static of(Z)Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
    .locals 1
    .param p0, "enabled"    # Z

    .line 64
    if-eqz p0, :cond_0

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->ENABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
    .locals 1

    .line 31
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->enabled:Z

    return v0
.end method
