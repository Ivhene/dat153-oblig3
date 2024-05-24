.class public abstract Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;
.super Ljava/lang/Object;
.source "EnumerationDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/enumeration/EnumerationDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/enumeration/EnumerationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# instance fields
.field private transient synthetic hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 75
    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 77
    return v2

    .line 79
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    .line 80
    .local v1, "enumerationDescription":Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActualName()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 69
    iget v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;
    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    move v3, v1

    move-object v1, v0

    move v0, v3

    .end local v0    # "this":Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;
    :goto_0
    if-nez v0, :cond_1

    iget v0, v1, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, v1, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->hashCode:I

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
