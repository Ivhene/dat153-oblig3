.class public final enum Lnet/bytebuddy/description/modifier/EnumerationState;
.super Ljava/lang/Enum;
.source "EnumerationState.java"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/EnumerationState;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/EnumerationState;

.field public static final enum ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lnet/bytebuddy/description/modifier/EnumerationState;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/description/modifier/EnumerationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;

    .line 33
    new-instance v1, Lnet/bytebuddy/description/modifier/EnumerationState;

    const/4 v2, 0x1

    const/16 v3, 0x4000

    const-string v4, "ENUMERATION"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/description/modifier/EnumerationState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    .line 23
    filled-new-array {v0, v1}, [Lnet/bytebuddy/description/modifier/EnumerationState;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->$VALUES:[Lnet/bytebuddy/description/modifier/EnumerationState;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lnet/bytebuddy/description/modifier/EnumerationState;->mask:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/EnumerationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lnet/bytebuddy/description/modifier/EnumerationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/modifier/EnumerationState;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/EnumerationState;
    .locals 1

    .line 23
    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->$VALUES:[Lnet/bytebuddy/description/modifier/EnumerationState;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/EnumerationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/EnumerationState;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    .line 53
    iget v0, p0, Lnet/bytebuddy/description/modifier/EnumerationState;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    .line 60
    const/16 v0, 0x4000

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 67
    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnumeration()Z
    .locals 1

    .line 76
    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
