.class public Lscenelib/annotations/io/ASTPath$ASTEntry;
.super Ljava/lang/Object;
.source "ASTPath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/ASTPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASTEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lscenelib/annotations/io/ASTPath$ASTEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private argument:Ljava/lang/Integer;

.field private childSelector:Ljava/lang/String;

.field private treeKind:Lcom/sun/source/tree/Tree$Kind;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V
    .locals 1
    .param p1, "treeKind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "childSelector"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "treeKind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "childSelector"    # Ljava/lang/String;
    .param p3, "argument"    # Ljava/lang/Integer;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    if-eqz p2, :cond_0

    .line 140
    iput-object p1, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->treeKind:Lcom/sun/source/tree/Tree$Kind;

    .line 141
    iput-object p2, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelector:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    .line 143
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private negativeAllowed()Z
    .locals 2

    .line 223
    sget-object v0, Lscenelib/annotations/io/ASTPath$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    iget-object v1, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->treeKind:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 229
    const/4 v0, 0x0

    return v0

    .line 227
    :pswitch_0
    const-string v0, "parameter"

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 225
    :pswitch_1
    const-string v0, "bound"

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public childSelectorIs(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelector:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 119
    check-cast p1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {p0, p1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->compareTo(Lscenelib/annotations/io/ASTPath$ASTEntry;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lscenelib/annotations/io/ASTPath$ASTEntry;)I
    .locals 4
    .param p1, "o"    # Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 235
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 236
    return v0

    .line 238
    :cond_0
    iget-object v1, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->treeKind:Lcom/sun/source/tree/Tree$Kind;

    iget-object v2, p1, Lscenelib/annotations/io/ASTPath$ASTEntry;->treeKind:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1, v2}, Lcom/sun/source/tree/Tree$Kind;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    .line 239
    .local v1, "c":I
    if-eqz v1, :cond_1

    return v1

    .line 240
    :cond_1
    iget-object v2, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelector:Ljava/lang/String;

    iget-object v3, p1, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelector:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 241
    if-eqz v1, :cond_2

    return v1

    .line 242
    :cond_2
    iget-object v2, p1, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    if-nez v2, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 242
    :cond_5
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 249
    instance-of v0, p1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTPath$ASTEntry;->compareTo(Lscenelib/annotations/io/ASTPath$ASTEntry;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getArgument()I
    .locals 2

    .line 204
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lscenelib/annotations/io/ASTPath$ASTEntry;->negativeAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Value not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildSelector()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelector:Ljava/lang/String;

    return-object v0
.end method

.method public getTreeKind()Lcom/sun/source/tree/Tree$Kind;
    .locals 1

    .line 165
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->treeKind:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public hasArgument()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0}, Lscenelib/annotations/io/ASTPath$ASTEntry;->negativeAllowed()Z

    move-result v0

    .line 216
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 254
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->treeKind:Lcom/sun/source/tree/Tree$Kind;

    iget-object v1, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelector:Ljava/lang/String;

    iget-object v2, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->treeKind:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->asInterface()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tree"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/ASTPath$ASTEntry;->argument:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
