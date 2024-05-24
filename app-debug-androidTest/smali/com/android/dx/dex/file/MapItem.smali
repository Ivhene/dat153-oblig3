.class public final Lcom/android/dx/dex/file/MapItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "MapItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final WRITE_SIZE:I = 0xc


# instance fields
.field private final firstItem:Lcom/android/dx/dex/file/Item;

.field private final itemCount:I

.field private final lastItem:Lcom/android/dx/dex/file/Item;

.field private final section:Lcom/android/dx/dex/file/Section;

.field private final type:Lcom/android/dx/dex/file/ItemType;


# direct methods
.method private constructor <init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V
    .locals 2
    .param p1, "type"    # Lcom/android/dx/dex/file/ItemType;
    .param p2, "section"    # Lcom/android/dx/dex/file/Section;
    .param p3, "firstItem"    # Lcom/android/dx/dex/file/Item;
    .param p4, "lastItem"    # Lcom/android/dx/dex/file/Item;
    .param p5, "itemCount"    # I

    .line 125
    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 127
    if-eqz p1, :cond_4

    .line 131
    if-eqz p2, :cond_3

    .line 135
    if-eqz p3, :cond_2

    .line 139
    if-eqz p4, :cond_1

    .line 143
    if-lez p5, :cond_0

    .line 147
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 148
    iput-object p2, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    .line 149
    iput-object p3, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    .line 150
    iput-object p4, p0, Lcom/android/dx/dex/file/MapItem;->lastItem:Lcom/android/dx/dex/file/Item;

    .line 151
    iput p5, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    .line 152
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lastItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "firstItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/android/dx/dex/file/Section;)V
    .locals 2
    .param p1, "section"    # Lcom/android/dx/dex/file/Section;

    .line 161
    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 163
    if-eqz p1, :cond_0

    .line 167
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    iput-object v0, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 168
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    .line 170
    iput-object v0, p0, Lcom/android/dx/dex/file/MapItem;->lastItem:Lcom/android/dx/dex/file/Item;

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    .line 172
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V
    .locals 19
    .param p0, "sections"    # [Lcom/android/dx/dex/file/Section;
    .param p1, "mapSection"    # Lcom/android/dx/dex/file/MixedItemSection;

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_7

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/dex/file/MixedItemSection;->items()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/dex/file/MapItem;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v11, v0, v4

    .line 80
    .local v11, "section":Lcom/android/dx/dex/file/Section;
    const/4 v5, 0x0

    .line 81
    .local v5, "currentType":Lcom/android/dx/dex/file/ItemType;
    const/4 v6, 0x0

    .line 82
    .local v6, "firstItem":Lcom/android/dx/dex/file/Item;
    const/4 v7, 0x0

    .line 83
    .local v7, "lastItem":Lcom/android/dx/dex/file/Item;
    const/4 v8, 0x0

    .line 85
    .local v8, "count":I
    invoke-virtual {v11}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move/from16 v16, v8

    .end local v5    # "currentType":Lcom/android/dx/dex/file/ItemType;
    .end local v6    # "firstItem":Lcom/android/dx/dex/file/Item;
    .end local v7    # "lastItem":Lcom/android/dx/dex/file/Item;
    .end local v8    # "count":I
    .local v13, "currentType":Lcom/android/dx/dex/file/ItemType;
    .local v14, "firstItem":Lcom/android/dx/dex/file/Item;
    .local v15, "lastItem":Lcom/android/dx/dex/file/Item;
    .local v16, "count":I
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/android/dx/dex/file/Item;

    .line 86
    .local v17, "item":Lcom/android/dx/dex/file/Item;
    invoke-virtual/range {v17 .. v17}, Lcom/android/dx/dex/file/Item;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object v10

    .line 87
    .local v10, "type":Lcom/android/dx/dex/file/ItemType;
    if-eq v10, v13, :cond_1

    .line 88
    if-eqz v16, :cond_0

    .line 89
    new-instance v9, Lcom/android/dx/dex/file/MapItem;

    move-object v5, v9

    move-object v6, v13

    move-object v7, v11

    move-object v8, v14

    move-object v0, v9

    move-object v9, v15

    move-object/from16 v18, v10

    .end local v10    # "type":Lcom/android/dx/dex/file/ItemType;
    .local v18, "type":Lcom/android/dx/dex/file/ItemType;
    move/from16 v10, v16

    invoke-direct/range {v5 .. v10}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    .end local v18    # "type":Lcom/android/dx/dex/file/ItemType;
    .restart local v10    # "type":Lcom/android/dx/dex/file/ItemType;
    :cond_0
    move-object/from16 v18, v10

    .line 92
    .end local v10    # "type":Lcom/android/dx/dex/file/ItemType;
    .restart local v18    # "type":Lcom/android/dx/dex/file/ItemType;
    :goto_2
    move-object/from16 v0, v18

    .line 93
    .end local v13    # "currentType":Lcom/android/dx/dex/file/ItemType;
    .local v0, "currentType":Lcom/android/dx/dex/file/ItemType;
    move-object/from16 v5, v17

    .line 94
    .end local v14    # "firstItem":Lcom/android/dx/dex/file/Item;
    .local v5, "firstItem":Lcom/android/dx/dex/file/Item;
    const/16 v16, 0x0

    move-object v13, v0

    move-object v14, v5

    goto :goto_3

    .line 87
    .end local v0    # "currentType":Lcom/android/dx/dex/file/ItemType;
    .end local v5    # "firstItem":Lcom/android/dx/dex/file/Item;
    .end local v18    # "type":Lcom/android/dx/dex/file/ItemType;
    .restart local v10    # "type":Lcom/android/dx/dex/file/ItemType;
    .restart local v13    # "currentType":Lcom/android/dx/dex/file/ItemType;
    .restart local v14    # "firstItem":Lcom/android/dx/dex/file/Item;
    :cond_1
    move-object/from16 v18, v10

    .line 96
    .end local v10    # "type":Lcom/android/dx/dex/file/ItemType;
    .restart local v18    # "type":Lcom/android/dx/dex/file/ItemType;
    :goto_3
    move-object/from16 v15, v17

    .line 97
    nop

    .end local v17    # "item":Lcom/android/dx/dex/file/Item;
    .end local v18    # "type":Lcom/android/dx/dex/file/ItemType;
    add-int/lit8 v16, v16, 0x1

    .line 98
    move-object/from16 v0, p0

    goto :goto_1

    .line 100
    :cond_2
    if-eqz v16, :cond_3

    .line 102
    new-instance v0, Lcom/android/dx/dex/file/MapItem;

    move-object v5, v0

    move-object v6, v13

    move-object v7, v11

    move-object v8, v14

    move-object v9, v15

    move/from16 v10, v16

    invoke-direct/range {v5 .. v10}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 104
    :cond_3
    if-ne v11, v1, :cond_4

    .line 106
    new-instance v0, Lcom/android/dx/dex/file/MapItem;

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/Section;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v11    # "section":Lcom/android/dx/dex/file/Section;
    .end local v13    # "currentType":Lcom/android/dx/dex/file/ItemType;
    .end local v14    # "firstItem":Lcom/android/dx/dex/file/Item;
    .end local v15    # "lastItem":Lcom/android/dx/dex/file/Item;
    .end local v16    # "count":I
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 110
    :cond_5
    new-instance v0, Lcom/android/dx/dex/file/UniformListItem;

    sget-object v3, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    invoke-direct {v0, v3, v2}, Lcom/android/dx/dex/file/UniformListItem;-><init>(Lcom/android/dx/dex/file/ItemType;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    .line 112
    return-void

    .line 73
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/dex/file/MapItem;>;"
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "mapSection.items().size() != 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "sections == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 0
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 199
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 177
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MapItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/ItemType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 6
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 210
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ItemType;->getMapValue()I

    move-result v0

    .line 213
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v1

    .local v1, "offset":I
    goto :goto_0

    .line 216
    .end local v1    # "offset":I
    :cond_0
    iget-object v2, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/Section;->getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I

    move-result v1

    .line 219
    .restart local v1    # "offset":I
    :goto_0
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MapItem;->offsetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v4}, Lcom/android/dx/dex/file/ItemType;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " map"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  type:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " // "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 223
    invoke-virtual {v4}, Lcom/android/dx/dex/file/ItemType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 224
    const-string v2, "  unused: 0"

    invoke-interface {p2, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {p2, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  offset: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 229
    :cond_1
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 230
    invoke-interface {p2, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 231
    iget v2, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    invoke-interface {p2, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 232
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 233
    return-void
.end method
