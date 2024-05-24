.class public Lannotator/find/IsSigMethodCriterion;
.super Ljava/lang/Object;
.source "IsSigMethodCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lannotator/find/IsSigMethodCriterion$Context;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final contextCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "Lannotator/find/IsSigMethodCriterion$Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fullMethodName:Ljava/lang/String;

.field private final fullyQualifiedParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Ljava/lang/String;

.field private final simpleMethodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    nop

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/find/IsSigMethodCriterion;->contextCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lannotator/find/IsSigMethodCriterion;->fullMethodName:Ljava/lang/String;

    .line 50
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lannotator/find/IsSigMethodCriterion;->simpleMethodName:Ljava/lang/String;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lannotator/find/IsSigMethodCriterion;->fullyQualifiedParams:Ljava/util/List;

    .line 60
    nop

    .line 61
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 61
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {p0, v1}, Lannotator/find/IsSigMethodCriterion;->parseParams(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "returnTypeJvml":Ljava/lang/String;
    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "void"

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->fieldDescriptorToBinaryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lannotator/find/IsSigMethodCriterion;->returnType:Ljava/lang/String;

    .line 71
    return-void

    .line 63
    .end local v0    # "returnTypeJvml":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while parsing method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;
    .locals 4
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 413
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 419
    .local v0, "kinds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/source/tree/Tree$Kind;>;"
    move-object v1, p0

    .line 421
    .local v1, "p":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v1, :cond_2

    .line 422
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 423
    .local v2, "leaf":Lcom/sun/source/tree/Tree;
    if-eqz v2, :cond_1

    .line 424
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/ClassTree;

    return-object v3

    .line 427
    :cond_0
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 428
    .end local v2    # "leaf":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 423
    .restart local v2    # "leaf":Lcom/sun/source/tree/Tree;
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 430
    .end local v2    # "leaf":Lcom/sun/source/tree/Tree;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static initImports(Lcom/sun/source/util/TreePath;)Lannotator/find/IsSigMethodCriterion$Context;
    .locals 8
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 99
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v0

    .line 100
    .local v0, "topLevel":Lcom/sun/source/tree/CompilationUnitTree;
    sget-object v1, Lannotator/find/IsSigMethodCriterion;->contextCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/IsSigMethodCriterion$Context;

    .line 101
    .local v1, "result":Lannotator/find/IsSigMethodCriterion$Context;
    if-eqz v1, :cond_0

    .line 102
    return-object v1

    .line 105
    :cond_0
    invoke-interface {v0}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageName()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 107
    .local v2, "packageTree":Lcom/sun/source/tree/ExpressionTree;
    if-nez v2, :cond_1

    .line 108
    const-string v3, ""

    .local v3, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3    # "packageName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, "imports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/sun/source/tree/CompilationUnitTree;->getImports()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/ImportTree;

    .line 115
    .local v6, "i":Lcom/sun/source/tree/ImportTree;
    invoke-interface {v6}, Lcom/sun/source/tree/ImportTree;->getQualifiedIdentifier()Lcom/sun/source/tree/Tree;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "imported":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v6    # "i":Lcom/sun/source/tree/ImportTree;
    .end local v7    # "imported":Ljava/lang/String;
    goto :goto_1

    .line 119
    :cond_2
    new-instance v5, Lannotator/find/IsSigMethodCriterion$Context;

    invoke-direct {v5, v3, v4}, Lannotator/find/IsSigMethodCriterion$Context;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v5

    .line 120
    sget-object v5, Lannotator/find/IsSigMethodCriterion;->contextCache:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object v1
.end method

.method private isPrimitiveLetter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 506
    nop

    .line 507
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    const-string v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    const-string v0, "I"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    const-string v0, "J"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 506
    :goto_1
    return v0
.end method

.method private matchSimpleType(Ljava/lang/String;Ljava/lang/String;Lannotator/find/IsSigMethodCriterion$Context;)Z
    .locals 10
    .param p1, "fullType"    # Ljava/lang/String;
    .param p2, "simpleType"    # Ljava/lang/String;
    .param p3, "context"    # Lannotator/find/IsSigMethodCriterion$Context;

    .line 174
    sget-object v0, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v1, "matchSimpleType(%s, %s, %s)%n"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :goto_0
    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "bracketIndex":I
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "beforeBracket":Ljava/lang/String;
    const-string v2, ">"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "afterBracket":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 184
    .end local v0    # "bracketIndex":I
    .end local v1    # "beforeBracket":Ljava/lang/String;
    .end local v2    # "afterBracket":Ljava/lang/String;
    goto :goto_0

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 196
    .local v0, "matchable":Z
    const-string v1, "."

    if-nez v0, :cond_2

    .line 198
    iget-object v3, p3, Lannotator/find/IsSigMethodCriterion$Context;->packageName:Ljava/lang/String;

    .line 199
    .local v3, "packagePrefix":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Lannotator/find/IsSigMethodCriterion;->matchWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    const/4 v0, 0x1

    .line 207
    .end local v3    # "packagePrefix":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 209
    const-string v3, "java.lang."

    invoke-direct {p0, p1, p2, v3}, Lannotator/find/IsSigMethodCriterion;->matchWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    const/4 v0, 0x1

    .line 214
    :cond_3
    if-nez v0, :cond_4

    .line 216
    const-string v3, ""

    invoke-direct {p0, p1, p2, v3}, Lannotator/find/IsSigMethodCriterion;->matchWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    const/4 v0, 0x1

    .line 226
    :cond_4
    if-nez v0, :cond_9

    .line 228
    iget-object v3, p3, Lannotator/find/IsSigMethodCriterion$Context;->imports:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    .local v4, "someImport":Ljava/lang/String;
    const/4 v5, 0x0

    .line 230
    .local v5, "importPrefix":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 234
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 238
    :cond_5
    nop

    .line 239
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "importSimpleType":Ljava/lang/String;
    const/16 v7, 0x5b

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 243
    .local v7, "arrayBracket":I
    move-object v8, p2

    .line 244
    .local v8, "simpleBaseType":Ljava/lang/String;
    const/4 v9, -0x1

    if-le v7, v9, :cond_6

    .line 245
    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 247
    :cond_6
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 248
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 249
    goto :goto_1

    .line 252
    :cond_7
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 255
    .end local v6    # "importSimpleType":Ljava/lang/String;
    .end local v7    # "arrayBracket":I
    .end local v8    # "simpleBaseType":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1, p2, v5}, Lannotator/find/IsSigMethodCriterion;->matchWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 256
    const/4 v0, 0x1

    .line 257
    goto :goto_3

    .line 259
    .end local v4    # "someImport":Ljava/lang/String;
    .end local v5    # "importPrefix":Ljava/lang/String;
    :cond_8
    goto :goto_1

    .line 262
    :cond_9
    :goto_3
    return v0
.end method

.method private matchTypeParam(Ljava/lang/String;Lcom/sun/source/tree/Tree;Ljava/util/Map;Lannotator/find/IsSigMethodCriterion$Context;)Z
    .locals 7
    .param p1, "goalType"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sun/source/tree/Tree;
    .param p4, "context"    # Lannotator/find/IsSigMethodCriterion$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lannotator/find/IsSigMethodCriterion$Context;",
            ")Z"
        }
    .end annotation

    .line 129
    .local p3, "typeToClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "simpleType":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p4}, Lannotator/find/IsSigMethodCriterion;->matchSimpleType(Ljava/lang/String;Ljava/lang/String;Lannotator/find/IsSigMethodCriterion$Context;)Z

    move-result v1

    .line 132
    .local v1, "haveMatch":Z
    if-nez v1, :cond_1

    .line 133
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 135
    .local v3, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0, p1, v0, p4}, Lannotator/find/IsSigMethodCriterion;->matchSimpleType(Ljava/lang/String;Ljava/lang/String;Lannotator/find/IsSigMethodCriterion$Context;)Z

    move-result v1

    .line 138
    if-nez v1, :cond_0

    .line 139
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "matchTypeParams() => false:%n"

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v5, "  type = %s%n"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v5, "  simpleType = %s%n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v5, "  goalType = %s%n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .end local v3    # "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 147
    :cond_1
    return v1
.end method

.method private matchTypeParams(Ljava/util/List;Ljava/util/Map;Lannotator/find/IsSigMethodCriterion$Context;)Z
    .locals 7
    .param p3, "context"    # Lannotator/find/IsSigMethodCriterion$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/VariableTree;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lannotator/find/IsSigMethodCriterion$Context;",
            ")Z"
        }
    .end annotation

    .line 154
    .local p1, "sourceParams":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    .local p2, "typeToClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lannotator/find/IsSigMethodCriterion;->fullyQualifiedParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lannotator/find/IsSigMethodCriterion;->fullyQualifiedParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "fullType":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/VariableTree;

    .line 158
    .local v2, "vt":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v2}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 159
    .local v3, "vtType":Lcom/sun/source/tree/Tree;
    invoke-direct {p0, v1, v3, p2, p3}, Lannotator/find/IsSigMethodCriterion;->matchTypeParam(Ljava/lang/String;Lcom/sun/source/tree/Tree;Ljava/util/Map;Lannotator/find/IsSigMethodCriterion$Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v2, v1}, [Ljava/lang/Object;

    move-result-object v5

    .line 160
    const-string v6, "matchTypeParam() => false:%n  i=%d vt = %s%n  fullType = %s%n"

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const/4 v4, 0x0

    return v4

    .line 155
    .end local v1    # "fullType":Ljava/lang/String;
    .end local v2    # "vt":Lcom/sun/source/tree/VariableTree;
    .end local v3    # "vtType":Lcom/sun/source/tree/Tree;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private matchWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fullType"    # Ljava/lang/String;
    .param p2, "simpleType"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 266
    invoke-direct {p0, p1, p2, p3}, Lannotator/find/IsSigMethodCriterion;->matchWithPrefixOneWay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    invoke-direct {p0, p2, p1, p3}, Lannotator/find/IsSigMethodCriterion;->matchWithPrefixOneWay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 266
    :goto_1
    return v0
.end method

.method private matchWithPrefixOneWay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "fullType"    # Ljava/lang/String;
    .param p2, "simpleType"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 275
    const-string v0, "/"

    const-string v1, "."

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "simpleType2":Ljava/lang/String;
    const-string v2, "$"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "fullType2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 288
    .local v1, "b":Z
    :goto_1
    sget-object v2, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 289
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, p2, p3, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 288
    const-string v5, "matchWithPrefix(%s, %s, %s) => %b)%n"

    invoke-virtual {v2, v5, v4}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    return v1
.end method

.method private parseParams(Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .line 75
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lannotator/find/IsSigMethodCriterion;->readNext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "nextParam":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v1, p0, Lannotator/find/IsSigMethodCriterion;->fullyQualifiedParams:Ljava/util/List;

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->fieldDescriptorToBinaryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v0    # "nextParam":Ljava/lang/String;
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private readNext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "restOfParams"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "firstChar":Ljava/lang/String;
    invoke-direct {p0, v0}, Lannotator/find/IsSigMethodCriterion;->isPrimitiveLetter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    return-object v0

    .line 88
    :cond_0
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lannotator/find/IsSigMethodCriterion;->readNext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 90
    :cond_1
    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown method params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lannotator/find/IsSigMethodCriterion;->fullMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with remainder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 435
    sget-object v0, Lannotator/find/Criterion$Kind;->SIG_METHOD:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 16
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 304
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 305
    return v1

    .line 308
    :cond_0
    invoke-static/range {p1 .. p1}, Lannotator/find/IsSigMethodCriterion;->initImports(Lcom/sun/source/util/TreePath;)Lannotator/find/IsSigMethodCriterion$Context;

    move-result-object v2

    .line 310
    .local v2, "context":Lannotator/find/IsSigMethodCriterion$Context;
    invoke-virtual/range {p1 .. p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 312
    .local v3, "leaf":Lcom/sun/source/tree/Tree;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v5, :cond_1

    .line 313
    sget-object v4, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 315
    invoke-static/range {p1 .. p1}, Lannotator/Main;->leafString(Lcom/sun/source/util/TreePath;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 313
    const-string v6, "IsSigMethodCriterion.isSatisfiedBy(%s) => false: not a METHOD tree%n"

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    return v1

    .line 325
    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/MethodTree;

    .line 327
    .local v4, "mt":Lcom/sun/source/tree/MethodTree;
    iget-object v5, v0, Lannotator/find/IsSigMethodCriterion;->simpleMethodName:Ljava/lang/String;

    invoke-interface {v4}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 328
    sget-object v5, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v6, "IsSigMethodCriterion.isSatisfiedBy => false: Names don\'t match%n"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    return v1

    .line 332
    :cond_2
    invoke-interface {v4}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v5

    .line 333
    .local v5, "sourceParams":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    iget-object v6, v0, Lannotator/find/IsSigMethodCriterion;->fullyQualifiedParams:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 334
    sget-object v6, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v7, "IsSigMethodCriterion.isSatisfiedBy => false: Number of parameters don\'t match%n"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    return v1

    .line 351
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v6, "typeToClassMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/TypeParameterTree;

    .line 353
    .local v8, "param":Lcom/sun/source/tree/TypeParameterTree;
    invoke-interface {v8}, Lcom/sun/source/tree/TypeParameterTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 354
    .local v10, "paramName":Ljava/lang/String;
    const-string v11, "Object"

    .line 355
    .local v11, "paramClass":Ljava/lang/String;
    invoke-interface {v8}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v12

    .line 356
    .local v12, "paramBounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lt v13, v9, :cond_5

    .line 357
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/Tree;

    .line 358
    .local v9, "boundZero":Lcom/sun/source/tree/Tree;
    invoke-interface {v9}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v13

    sget-object v14, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v13, v14, :cond_4

    .line 359
    move-object v13, v9

    check-cast v13, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v13}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v9

    .line 361
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 363
    .end local v9    # "boundZero":Lcom/sun/source/tree/Tree;
    :cond_5
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .end local v8    # "param":Lcom/sun/source/tree/TypeParameterTree;
    .end local v10    # "paramName":Ljava/lang/String;
    .end local v11    # "paramClass":Ljava/lang/String;
    .end local v12    # "paramBounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    goto :goto_0

    .line 371
    :cond_6
    move-object/from16 v7, p1

    .line 372
    .local v7, "classpath":Lcom/sun/source/util/TreePath;
    invoke-static {v7}, Lannotator/find/IsSigMethodCriterion;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v8

    .line 373
    .local v8, "ct":Lcom/sun/source/tree/ClassTree;
    :goto_1
    if-eqz v8, :cond_a

    .line 374
    invoke-interface {v8}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/source/tree/TypeParameterTree;

    .line 375
    .local v11, "param":Lcom/sun/source/tree/TypeParameterTree;
    invoke-interface {v11}, Lcom/sun/source/tree/TypeParameterTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 376
    .local v12, "paramName":Ljava/lang/String;
    const-string v13, "Object"

    .line 377
    .local v13, "paramClass":Ljava/lang/String;
    invoke-interface {v11}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v14

    .line 378
    .local v14, "paramBounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    if-eqz v14, :cond_8

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lt v15, v9, :cond_8

    .line 379
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/source/tree/Tree;

    .line 380
    .local v15, "pb":Lcom/sun/source/tree/Tree;
    invoke-interface {v15}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v9, v1, :cond_7

    .line 381
    move-object v1, v15

    check-cast v1, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v15

    .line 383
    :cond_7
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 385
    .end local v15    # "pb":Lcom/sun/source/tree/Tree;
    :cond_8
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .end local v11    # "param":Lcom/sun/source/tree/TypeParameterTree;
    .end local v12    # "paramName":Ljava/lang/String;
    .end local v13    # "paramClass":Ljava/lang/String;
    .end local v14    # "paramBounds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    const/4 v1, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 387
    :cond_9
    invoke-virtual {v7}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    .line 388
    invoke-static {v7}, Lannotator/find/IsSigMethodCriterion;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v9, 0x1

    goto :goto_1

    .line 392
    .end local v7    # "classpath":Lcom/sun/source/util/TreePath;
    .end local v8    # "ct":Lcom/sun/source/tree/ClassTree;
    :cond_a
    invoke-direct {v0, v5, v6, v2}, Lannotator/find/IsSigMethodCriterion;->matchTypeParams(Ljava/util/List;Ljava/util/Map;Lannotator/find/IsSigMethodCriterion$Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 393
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v7, "IsSigMethodCriterion => false: Parameter types don\'t match%n"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    return v8

    .line 397
    :cond_b
    invoke-interface {v4}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lannotator/find/IsSigMethodCriterion;->returnType:Ljava/lang/String;

    .line 398
    invoke-interface {v4}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v7

    invoke-direct {v0, v1, v7, v6, v2}, Lannotator/find/IsSigMethodCriterion;->matchTypeParam(Ljava/lang/String;Lcom/sun/source/tree/Tree;Ljava/util/Map;Lannotator/find/IsSigMethodCriterion$Context;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 399
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v7, "IsSigMethodCriterion => false: Return types don\'t match%n"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    return v8

    .line 398
    :cond_c
    const/4 v8, 0x0

    goto :goto_3

    .line 397
    :cond_d
    const/4 v8, 0x0

    .line 403
    :goto_3
    sget-object v1, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v7, "IsSigMethodCriterion.isSatisfiedBy => true%n"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    const/4 v1, 0x1

    return v1
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 295
    if-nez p1, :cond_0

    .line 296
    const/4 v0, 0x0

    return v0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Lannotator/find/IsSigMethodCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsSigMethodCriterion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/IsSigMethodCriterion;->fullMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
