.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;
.super Ljava/lang/Enum;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 327
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    .line 322
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 322
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;
    .locals 1

    .line 322
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Disabled;

    return-object v0
.end method


# virtual methods
.method public target(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;
    .locals 2
    .param p1, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot look up field from disabled pool"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
