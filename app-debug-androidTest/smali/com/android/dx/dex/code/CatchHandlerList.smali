.class public final Lcom/android/dx/dex/code/CatchHandlerList;
.super Lcom/android/dx/util/FixedSizeList;
.source "CatchHandlerList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/code/CatchHandlerList;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/android/dx/dex/code/CatchHandlerList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public catchesAll()Z
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v0

    .line 107
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 108
    const/4 v1, 0x0

    return v1

    .line 111
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v1

    .line 112
    .local v1, "last":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    sget-object v3, Lcom/android/dx/rop/cst/CstType;->OBJECT:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I
    .locals 8
    .param p1, "other"    # Lcom/android/dx/dex/code/CatchHandlerList;

    .line 139
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 141
    return v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v1

    .line 145
    .local v1, "thisSize":I
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v2

    .line 146
    .local v2, "otherSize":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 148
    .local v3, "checkSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v5

    .line 150
    .local v5, "thisEntry":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    invoke-virtual {p1, v4}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v6

    .line 151
    .local v6, "otherEntry":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    invoke-virtual {v5, v6}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList$Entry;)I

    move-result v7

    .line 152
    .local v7, "compare":I
    if-eqz v7, :cond_1

    .line 153
    return v7

    .line 148
    .end local v5    # "thisEntry":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    .end local v6    # "otherEntry":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    .end local v7    # "compare":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "i":I
    :cond_2
    if-ge v1, v2, :cond_3

    .line 158
    const/4 v0, -0x1

    return v0

    .line 159
    :cond_3
    if-le v1, v2, :cond_4

    .line 160
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_4
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I

    move-result p1

    return p1
.end method

.method public get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    .locals 1
    .param p1, "n"    # I

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchHandlerList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/CatchHandlerList$Entry;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "entry"    # Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public set(ILcom/android/dx/rop/cst/CstType;I)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "exceptionType"    # Lcom/android/dx/rop/cst/CstType;
    .param p3, "handler"    # I

    .line 123
    new-instance v0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    invoke-direct {v0, p2, p3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;-><init>(Lcom/android/dx/rop/cst/CstType;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    .line 124
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v1

    .line 71
    .local v1, "size":I
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "catch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v3

    .line 78
    .local v3, "entry":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    if-eqz v2, :cond_0

    .line 79
    const-string v4, ",\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    const-string v4, "<any>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :goto_1
    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .end local v3    # "entry":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
