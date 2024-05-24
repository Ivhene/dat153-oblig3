.class final Lcom/android/dx/merge/SortableType;
.super Ljava/lang/Object;
.source "SortableType.java"


# static fields
.field public static final NULLS_LAST_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/dx/merge/SortableType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final classDef:Lcom/android/dex/ClassDef;

.field private depth:I

.field private final dex:Lcom/android/dex/Dex;

.field private final indexMap:Lcom/android/dx/merge/IndexMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/dx/merge/SortableType$1;

    invoke-direct {v0}, Lcom/android/dx/merge/SortableType$1;-><init>()V

    sput-object v0, Lcom/android/dx/merge/SortableType;->NULLS_LAST_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;Lcom/android/dex/ClassDef;)V
    .locals 1
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "indexMap"    # Lcom/android/dx/merge/IndexMap;
    .param p3, "classDef"    # Lcom/android/dex/ClassDef;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/merge/SortableType;->depth:I

    .line 54
    iput-object p1, p0, Lcom/android/dx/merge/SortableType;->dex:Lcom/android/dex/Dex;

    .line 55
    iput-object p2, p0, Lcom/android/dx/merge/SortableType;->indexMap:Lcom/android/dx/merge/IndexMap;

    .line 56
    iput-object p3, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/merge/SortableType;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/merge/SortableType;

    .line 28
    iget v0, p0, Lcom/android/dx/merge/SortableType;->depth:I

    return v0
.end method


# virtual methods
.method public getClassDef()Lcom/android/dex/ClassDef;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    return-object v0
.end method

.method public getDex()Lcom/android/dex/Dex;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->dex:Lcom/android/dex/Dex;

    return-object v0
.end method

.method public getIndexMap()Lcom/android/dx/merge/IndexMap;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->indexMap:Lcom/android/dx/merge/IndexMap;

    return-object v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    return v0
.end method

.method public isDepthAssigned()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/android/dx/merge/SortableType;->depth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tryAssignDepth([Lcom/android/dx/merge/SortableType;)Z
    .locals 9
    .param p1, "types"    # [Lcom/android/dx/merge/SortableType;

    .line 82
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 83
    const/4 v0, 0x0

    .local v0, "max":I
    goto :goto_0

    .line 84
    .end local v0    # "max":I
    :cond_0
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    iget-object v3, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    invoke-virtual {v3}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    move-result v3

    if-eq v0, v3, :cond_6

    .line 89
    iget-object v0, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    invoke-virtual {v0}, Lcom/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    aget-object v0, p1, v0

    .line 90
    .local v0, "sortableSupertype":Lcom/android/dx/merge/SortableType;
    if-nez v0, :cond_1

    .line 91
    const/4 v3, 0x1

    move v0, v3

    .local v3, "max":I
    goto :goto_0

    .line 92
    .end local v3    # "max":I
    :cond_1
    iget v3, v0, Lcom/android/dx/merge/SortableType;->depth:I

    if-ne v3, v2, :cond_2

    .line 93
    return v1

    .line 95
    :cond_2
    iget v3, v0, Lcom/android/dx/merge/SortableType;->depth:I

    move v0, v3

    .line 99
    .local v0, "max":I
    :goto_0
    iget-object v3, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    invoke-virtual {v3}, Lcom/android/dex/ClassDef;->getInterfaces()[S

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_5

    aget-short v7, v3, v5

    .line 100
    .local v7, "interfaceIndex":S
    aget-object v8, p1, v7

    .line 101
    .local v8, "implemented":Lcom/android/dx/merge/SortableType;
    if-nez v8, :cond_3

    .line 102
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 103
    :cond_3
    iget v6, v8, Lcom/android/dx/merge/SortableType;->depth:I

    if-ne v6, v2, :cond_4

    .line 104
    return v1

    .line 106
    :cond_4
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 99
    .end local v7    # "interfaceIndex":S
    .end local v8    # "implemented":Lcom/android/dx/merge/SortableType;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    :cond_5
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/dx/merge/SortableType;->depth:I

    .line 111
    return v6

    .line 86
    .end local v0    # "max":I
    :cond_6
    new-instance v0, Lcom/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class with type index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/merge/SortableType;->classDef:Lcom/android/dex/ClassDef;

    invoke-virtual {v2}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extends itself"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
