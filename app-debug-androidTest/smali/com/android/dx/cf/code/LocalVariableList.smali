.class public final Lcom/android/dx/cf/code/LocalVariableList;
.super Lcom/android/dx/util/FixedSizeList;
.source "LocalVariableList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/cf/code/LocalVariableList$Item;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/cf/code/LocalVariableList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/dx/cf/code/LocalVariableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/LocalVariableList;-><init>(I)V

    sput-object v0, Lcom/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/android/dx/cf/code/LocalVariableList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 104
    return-void
.end method

.method public static concat(Lcom/android/dx/cf/code/LocalVariableList;Lcom/android/dx/cf/code/LocalVariableList;)Lcom/android/dx/cf/code/LocalVariableList;
    .locals 6
    .param p0, "list1"    # Lcom/android/dx/cf/code/LocalVariableList;
    .param p1, "list2"    # Lcom/android/dx/cf/code/LocalVariableList;

    .line 43
    sget-object v0, Lcom/android/dx/cf/code/LocalVariableList;->EMPTY:Lcom/android/dx/cf/code/LocalVariableList;

    if-ne p0, v0, :cond_0

    .line 45
    return-object p1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    .line 49
    .local v0, "sz1":I
    invoke-virtual {p1}, Lcom/android/dx/cf/code/LocalVariableList;->size()I

    move-result v1

    .line 50
    .local v1, "sz2":I
    new-instance v2, Lcom/android/dx/cf/code/LocalVariableList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lcom/android/dx/cf/code/LocalVariableList;-><init>(I)V

    .line 52
    .local v2, "result":Lcom/android/dx/cf/code/LocalVariableList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 53
    invoke-virtual {p0, v3}, Lcom/android/dx/cf/code/LocalVariableList;->get(I)Lcom/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/dx/cf/code/LocalVariableList;->set(ILcom/android/dx/cf/code/LocalVariableList$Item;)V

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 57
    add-int v4, v0, v3

    invoke-virtual {p1, v3}, Lcom/android/dx/cf/code/LocalVariableList;->get(I)Lcom/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/dx/cf/code/LocalVariableList;->set(ILcom/android/dx/cf/code/LocalVariableList$Item;)V

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/dx/cf/code/LocalVariableList;->setImmutable()V

    .line 61
    return-object v2
.end method

.method public static mergeDescriptorsAndSignatures(Lcom/android/dx/cf/code/LocalVariableList;Lcom/android/dx/cf/code/LocalVariableList;)Lcom/android/dx/cf/code/LocalVariableList;
    .locals 6
    .param p0, "descriptorList"    # Lcom/android/dx/cf/code/LocalVariableList;
    .param p1, "signatureList"    # Lcom/android/dx/cf/code/LocalVariableList;

    .line 80
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    .line 81
    .local v0, "descriptorSize":I
    new-instance v1, Lcom/android/dx/cf/code/LocalVariableList;

    invoke-direct {v1, v0}, Lcom/android/dx/cf/code/LocalVariableList;-><init>(I)V

    .line 83
    .local v1, "result":Lcom/android/dx/cf/code/LocalVariableList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/dx/cf/code/LocalVariableList;->get(I)Lcom/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v3

    .line 85
    .local v3, "item":Lcom/android/dx/cf/code/LocalVariableList$Item;
    invoke-virtual {p1, v3}, Lcom/android/dx/cf/code/LocalVariableList;->itemToLocal(Lcom/android/dx/cf/code/LocalVariableList$Item;)Lcom/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v4

    .line 86
    .local v4, "signatureItem":Lcom/android/dx/cf/code/LocalVariableList$Item;
    if-eqz v4, :cond_0

    .line 87
    invoke-static {v4}, Lcom/android/dx/cf/code/LocalVariableList$Item;->access$000(Lcom/android/dx/cf/code/LocalVariableList$Item;)Lcom/android/dx/rop/cst/CstString;

    move-result-object v5

    .line 88
    .local v5, "signature":Lcom/android/dx/rop/cst/CstString;
    invoke-virtual {v3, v5}, Lcom/android/dx/cf/code/LocalVariableList$Item;->withSignature(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v3

    .line 90
    .end local v5    # "signature":Lcom/android/dx/rop/cst/CstString;
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/android/dx/cf/code/LocalVariableList;->set(ILcom/android/dx/cf/code/LocalVariableList$Item;)V

    .line 83
    .end local v3    # "item":Lcom/android/dx/cf/code/LocalVariableList$Item;
    .end local v4    # "signatureItem":Lcom/android/dx/cf/code/LocalVariableList$Item;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/android/dx/cf/code/LocalVariableList;->setImmutable()V

    .line 94
    return-object v1
.end method


# virtual methods
.method public get(I)Lcom/android/dx/cf/code/LocalVariableList$Item;
    .locals 1
    .param p1, "n"    # I

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/code/LocalVariableList$Item;

    return-object v0
.end method

.method public itemToLocal(Lcom/android/dx/cf/code/LocalVariableList$Item;)Lcom/android/dx/cf/code/LocalVariableList$Item;
    .locals 4
    .param p1, "item"    # Lcom/android/dx/cf/code/LocalVariableList$Item;

    .line 161
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    .line 163
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/cf/code/LocalVariableList$Item;

    .line 166
    .local v2, "one":Lcom/android/dx/cf/code/LocalVariableList$Item;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/dx/cf/code/LocalVariableList$Item;->matchesAllButType(Lcom/android/dx/cf/code/LocalVariableList$Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    return-object v2

    .line 163
    .end local v2    # "one":Lcom/android/dx/cf/code/LocalVariableList$Item;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public pcAndIndexToLocal(II)Lcom/android/dx/cf/code/LocalVariableList$Item;
    .locals 4
    .param p1, "pc"    # I
    .param p2, "index"    # I

    .line 186
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LocalVariableList;->size()I

    move-result v0

    .line 188
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/LocalVariableList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/cf/code/LocalVariableList$Item;

    .line 191
    .local v2, "one":Lcom/android/dx/cf/code/LocalVariableList$Item;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/android/dx/cf/code/LocalVariableList$Item;->matchesPcAndIndex(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    return-object v2

    .line 188
    .end local v2    # "one":Lcom/android/dx/cf/code/LocalVariableList$Item;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public set(IIILcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;I)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "startPc"    # I
    .param p3, "length"    # I
    .param p4, "name"    # Lcom/android/dx/rop/cst/CstString;
    .param p5, "descriptor"    # Lcom/android/dx/rop/cst/CstString;
    .param p6, "signature"    # Lcom/android/dx/rop/cst/CstString;
    .param p7, "index"    # I

    .line 147
    new-instance v7, Lcom/android/dx/cf/code/LocalVariableList$Item;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/cf/code/LocalVariableList$Item;-><init>(IILcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;I)V

    invoke-virtual {p0, p1, v7}, Lcom/android/dx/cf/code/LocalVariableList;->set0(ILjava/lang/Object;)V

    .line 148
    return-void
.end method

.method public set(ILcom/android/dx/cf/code/LocalVariableList$Item;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "item"    # Lcom/android/dx/cf/code/LocalVariableList$Item;

    .line 123
    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/cf/code/LocalVariableList;->set0(ILjava/lang/Object;)V

    .line 128
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
