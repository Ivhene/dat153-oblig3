.class public final enum Lnet/bytebuddy/description/modifier/Visibility;
.super Ljava/lang/Enum;
.source "Visibility.java"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/Visibility;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/Visibility;

.field public static final enum PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

.field public static final enum PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

.field public static final enum PROTECTED:Lnet/bytebuddy/description/modifier/Visibility;

.field public static final enum PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lnet/bytebuddy/description/modifier/Visibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/modifier/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    .line 33
    new-instance v1, Lnet/bytebuddy/description/modifier/Visibility;

    const-string v4, "PACKAGE_PRIVATE"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/description/modifier/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    .line 38
    new-instance v2, Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v3, 0x4

    const-string v4, "PROTECTED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lnet/bytebuddy/description/modifier/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/bytebuddy/description/modifier/Visibility;->PROTECTED:Lnet/bytebuddy/description/modifier/Visibility;

    .line 43
    new-instance v3, Lnet/bytebuddy/description/modifier/Visibility;

    const-string v4, "PRIVATE"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lnet/bytebuddy/description/modifier/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    .line 23
    filled-new-array {v0, v1, v2, v3}, [Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/modifier/Visibility;->$VALUES:[Lnet/bytebuddy/description/modifier/Visibility;

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lnet/bytebuddy/description/modifier/Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    .line 23
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->$VALUES:[Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0
.end method


# virtual methods
.method public expandTo(Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/description/modifier/Visibility;
    .locals 3
    .param p1, "visibility"    # Lnet/bytebuddy/description/modifier/Visibility;

    .line 123
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility$1;->$SwitchMap$net$bytebuddy$description$modifier$Visibility:[I

    invoke-virtual {p1}, Lnet/bytebuddy/description/modifier/Visibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    return-object p0

    .line 131
    :pswitch_1
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    if-ne p0, v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 127
    :pswitch_2
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    return-object v0

    .line 125
    :pswitch_3
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMask()I
    .locals 1

    .line 63
    iget v0, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    .line 70
    const/4 v0, 0x7

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 77
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPackagePrivate()Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/Visibility;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/Visibility;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/Visibility;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 113
    iget v0, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 95
    iget v0, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPublic()Z
    .locals 2

    .line 86
    iget v0, p0, Lnet/bytebuddy/description/modifier/Visibility;->mask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
