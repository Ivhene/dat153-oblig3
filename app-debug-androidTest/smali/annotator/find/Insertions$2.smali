.class final Lannotator/find/Insertions$2;
.super Ljava/lang/Object;
.source "Insertions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lannotator/find/Insertion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lannotator/find/Insertion;Lannotator/find/Insertion;)I
    .locals 12
    .param p1, "o1"    # Lannotator/find/Insertion;
    .param p2, "o2"    # Lannotator/find/Insertion;

    .line 1139
    invoke-virtual {p1}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v0

    .line 1140
    .local v0, "crit1":Lannotator/find/Criteria;
    invoke-virtual {p2}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v1

    .line 1141
    .local v1, "crit2":Lannotator/find/Criteria;
    invoke-virtual {v0}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v2

    .line 1142
    .local v2, "p1":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v1}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v3

    .line 1143
    .local v3, "p2":Lscenelib/annotations/io/ASTPath;
    new-instance v10, Lscenelib/annotations/io/ASTRecord;

    const/4 v5, 0x0

    .line 1144
    invoke-virtual {v0}, Lannotator/find/Criteria;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lannotator/find/Criteria;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lannotator/find/Criteria;->getFieldName()Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_0

    .line 1145
    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v4

    move-object v9, v4

    goto :goto_0

    :cond_0
    move-object v9, v2

    :goto_0
    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 1146
    .local v4, "r1":Lscenelib/annotations/io/ASTRecord;
    new-instance v11, Lscenelib/annotations/io/ASTRecord;

    const/4 v6, 0x0

    .line 1147
    invoke-virtual {v1}, Lannotator/find/Criteria;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lannotator/find/Criteria;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lannotator/find/Criteria;->getFieldName()Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_1

    .line 1148
    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    move-object v10, v5

    goto :goto_1

    :cond_1
    move-object v10, v3

    :goto_1
    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lscenelib/annotations/io/ASTRecord;-><init>(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/io/ASTPath;)V

    .line 1150
    .local v5, "r2":Lscenelib/annotations/io/ASTRecord;
    invoke-virtual {v4, v5}, Lscenelib/annotations/io/ASTRecord;->compareTo(Lscenelib/annotations/io/ASTRecord;)I

    move-result v6

    .line 1151
    .local v6, "cmp":I
    if-eqz v6, :cond_2

    .line 1152
    return v6

    .line 1155
    :cond_2
    invoke-static {p2}, Lannotator/find/Insertions;->access$100(Lannotator/find/Insertion;)I

    move-result v7

    invoke-static {p1}, Lannotator/find/Insertions;->access$100(Lannotator/find/Insertion;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    .line 1156
    if-eqz v6, :cond_3

    .line 1157
    return v6

    .line 1159
    :cond_3
    invoke-virtual {p1}, Lannotator/find/Insertion;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lannotator/find/Insertion;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 1160
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1136
    check-cast p1, Lannotator/find/Insertion;

    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/Insertions$2;->compare(Lannotator/find/Insertion;Lannotator/find/Insertion;)I

    move-result p1

    return p1
.end method
