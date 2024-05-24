.class public Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
.super Ljava/lang/Object;
.source "FieldDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureToken"
.end annotation


# instance fields
.field private transient synthetic hashCode:I

.field private final name:Ljava/lang/String;

.field private final type:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    .line 637
    iput-object p2, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    .line 638
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 668
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 669
    return v0

    .line 670
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 671
    return v2

    .line 673
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    .line 674
    .local v1, "signatureToken":Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    iget-object v4, v1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, v1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 646
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 655
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 661
    iget v0, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 662
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 663
    move v4, v1

    move-object v1, v0

    move v0, v4

    .end local v0    # "this":Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
    .end local v1    # "result":I
    :goto_0
    if-nez v0, :cond_1

    iget v0, v1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, v1, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->hashCode:I

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->type:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
