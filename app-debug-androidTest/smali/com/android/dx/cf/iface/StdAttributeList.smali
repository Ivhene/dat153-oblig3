.class public final Lcom/android/dx/cf/iface/StdAttributeList;
.super Lcom/android/dx/util/FixedSizeList;
.source "StdAttributeList.java"

# interfaces
.implements Lcom/android/dx/cf/iface/AttributeList;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public byteLength()I
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v0

    .line 46
    .local v0, "sz":I
    const/4 v1, 0x2

    .line 48
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 49
    invoke-virtual {p0, v2}, Lcom/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/dx/cf/iface/Attribute;->byteLength()I

    move-result v3

    add-int/2addr v1, v3

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v0

    .line 60
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v2

    .line 62
    .local v2, "att":Lcom/android/dx/cf/iface/Attribute;
    invoke-interface {v2}, Lcom/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    return-object v2

    .line 60
    .end local v2    # "att":Lcom/android/dx/cf/iface/Attribute;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public findNext(Lcom/android/dx/cf/iface/Attribute;)Lcom/android/dx/cf/iface/Attribute;
    .locals 6
    .param p1, "attrib"    # Lcom/android/dx/cf/iface/Attribute;

    .line 73
    invoke-virtual {p0}, Lcom/android/dx/cf/iface/StdAttributeList;->size()I

    move-result v0

    .line 77
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "at":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v3

    .line 79
    .local v3, "att":Lcom/android/dx/cf/iface/Attribute;
    if-ne v3, p1, :cond_2

    .line 80
    nop

    .line 87
    .end local v3    # "att":Lcom/android/dx/cf/iface/Attribute;
    invoke-interface {p1}, Lcom/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/iface/StdAttributeList;->get(I)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v4

    .line 91
    .local v4, "att":Lcom/android/dx/cf/iface/Attribute;
    invoke-interface {v4}, Lcom/android/dx/cf/iface/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    return-object v4

    .line 91
    .end local v4    # "att":Lcom/android/dx/cf/iface/Attribute;
    :cond_0
    goto :goto_1

    .line 96
    :cond_1
    return-object v2

    .line 77
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_3
    return-object v2
.end method

.method public get(I)Lcom/android/dx/cf/iface/Attribute;
    .locals 1
    .param p1, "n"    # I

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/iface/StdAttributeList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/iface/Attribute;

    return-object v0
.end method

.method public set(ILcom/android/dx/cf/iface/Attribute;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "attribute"    # Lcom/android/dx/cf/iface/Attribute;

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/cf/iface/StdAttributeList;->set0(ILjava/lang/Object;)V

    .line 107
    return-void
.end method
