.class public final enum Lnet/bytebuddy/description/modifier/Ownership;
.super Ljava/lang/Enum;
.source "Ownership.java"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/Ownership;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/Ownership;

.field public static final enum MEMBER:Lnet/bytebuddy/description/modifier/Ownership;

.field public static final enum STATIC:Lnet/bytebuddy/description/modifier/Ownership;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lnet/bytebuddy/description/modifier/Ownership;

    const-string v1, "MEMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/description/modifier/Ownership;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/Ownership;->MEMBER:Lnet/bytebuddy/description/modifier/Ownership;

    .line 34
    new-instance v1, Lnet/bytebuddy/description/modifier/Ownership;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const-string v4, "STATIC"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/description/modifier/Ownership;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    .line 24
    filled-new-array {v0, v1}, [Lnet/bytebuddy/description/modifier/Ownership;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/modifier/Ownership;->$VALUES:[Lnet/bytebuddy/description/modifier/Ownership;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lnet/bytebuddy/description/modifier/Ownership;->mask:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/Ownership;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lnet/bytebuddy/description/modifier/Ownership;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/modifier/Ownership;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/Ownership;
    .locals 1

    .line 24
    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->$VALUES:[Lnet/bytebuddy/description/modifier/Ownership;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/Ownership;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/Ownership;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    .line 54
    iget v0, p0, Lnet/bytebuddy/description/modifier/Ownership;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    .line 61
    const/16 v0, 0x8

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 68
    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->MEMBER:Lnet/bytebuddy/description/modifier/Ownership;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 77
    sget-object v0, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
