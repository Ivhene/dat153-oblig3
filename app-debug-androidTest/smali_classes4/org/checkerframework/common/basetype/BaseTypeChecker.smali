.class public abstract Lorg/checkerframework/common/basetype/BaseTypeChecker;
.super Lorg/checkerframework/framework/source/SourceChecker;
.source "BaseTypeChecker.java"

# interfaces
.implements Lorg/checkerframework/common/basetype/BaseTypeContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private immediateSubcheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;"
        }
    .end annotation
.end field

.field private messageStore:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;",
            ">;"
        }
    .end annotation
.end field

.field private subcheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;"
        }
    .end annotation
.end field

.field private supportedOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private treePathCacher:Lorg/checkerframework/framework/util/TreePathCacher;


# direct methods
.method public static synthetic $r8$lambda$iosrRukWEHW5zaDLDK_FucJE4VE(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->compareCheckerMessages(Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lorg/checkerframework/framework/source/SourceChecker;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->subcheckers:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->immediateSubcheckers:Ljava/util/List;

    .line 133
    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->supportedOptions:Ljava/util/Set;

    .line 139
    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->treePathCacher:Lorg/checkerframework/framework/util/TreePathCacher;

    .line 549
    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messageStore:Ljava/util/TreeSet;

    return-void
.end method

.method private compareCheckerMessages(Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;)I
    .locals 7
    .param p1, "o1"    # Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
    .param p2, "o2"    # Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;

    .line 652
    iget-object v0, p1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->source:Lcom/sun/source/tree/Tree;

    iget-object v1, p2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->source:Lcom/sun/source/tree/Tree;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/InternalUtils;->compareDiagnosticPosition(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)I

    move-result v0

    .line 653
    .local v0, "byPos":I
    if-eqz v0, :cond_0

    .line 654
    return v0

    .line 657
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->kind:Ljavax/tools/Diagnostic$Kind;

    iget-object v2, p2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->kind:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v1, v2}, Ljavax/tools/Diagnostic$Kind;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    .line 658
    .local v1, "kind":I
    if-eqz v1, :cond_1

    .line 659
    return v1

    .line 662
    :cond_1
    iget-object v2, p1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->message:Ljava/lang/String;

    iget-object v3, p2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 663
    .local v2, "msgcmp":I
    if-nez v2, :cond_2

    .line 666
    const/4 v3, 0x0

    return v3

    .line 671
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v3

    .line 672
    .local v3, "subcheckers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    iget-object v4, p1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 673
    .local v4, "o1Index":I
    iget-object v5, p2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 674
    .local v5, "o2Index":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 675
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 677
    :cond_3
    if-ne v5, v6, :cond_4

    .line 678
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 680
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    .line 681
    .local v6, "checkercmp":I
    if-nez v6, :cond_5

    .line 683
    return v2

    .line 685
    :cond_5
    return v6
.end method

.method public static getRelatedClassName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "replacement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 239
    .local p0, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 240
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "Checker"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "Subchecker"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 239
    return-object v0
.end method

.method private getSubcheckers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->subcheckers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 455
    .local v0, "checkerMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    invoke-direct {p0, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->instantiateSubcheckers(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->immediateSubcheckers:Ljava/util/List;

    .line 457
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->subcheckers:Ljava/util/List;

    .line 460
    .end local v0    # "checkerMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->subcheckers:Ljava/util/List;

    return-object v0
.end method

.method private instantiateSubcheckers(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;"
        }
    .end annotation

    .line 403
    .local p1, "alreadyInitializedSubcheckerMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    nop

    .line 404
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 405
    .local v0, "classesOfImmediateSubcheckers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;>;"
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 409
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 410
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .local v1, "immediateSubcheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 413
    .local v3, "subcheckerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 414
    .local v4, "subchecker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    if-eqz v4, :cond_1

    .line 417
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    goto :goto_0

    .line 423
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/common/basetype/BaseTypeChecker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .local v5, "instance":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    nop

    .line 428
    iget-object v6, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {v5, v6}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->setProcessingEnvironment(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 429
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTreePathCacher()Lorg/checkerframework/framework/util/TreePathCacher;

    move-result-object v6

    iput-object v6, v5, Lorg/checkerframework/common/basetype/BaseTypeChecker;->treePathCacher:Lorg/checkerframework/framework/util/TreePathCacher;

    .line 431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lorg/checkerframework/common/basetype/BaseTypeChecker;->subcheckers:Ljava/util/List;

    .line 432
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    nop

    .line 434
    invoke-direct {v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->instantiateSubcheckers(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lorg/checkerframework/common/basetype/BaseTypeChecker;->immediateSubcheckers:Ljava/util/List;

    .line 435
    invoke-virtual {v5, p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->setParentChecker(Lorg/checkerframework/framework/source/SourceChecker;)V

    .line 436
    invoke-virtual {p1, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v3    # "subcheckerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    .end local v4    # "subchecker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .end local v5    # "instance":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    goto :goto_0

    .line 424
    .restart local v3    # "subcheckerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    .restart local v4    # "subchecker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create an instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v5

    .line 439
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "subcheckerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;"
    .end local v4    # "subchecker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static invokeConstructorFor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 281
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 283
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 287
    nop

    .line 289
    if-eqz v0, :cond_2

    .line 293
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 294
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 295
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catchall_0
    move-exception v1

    .line 296
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 298
    .local v2, "err":Ljava/lang/Throwable;
    instance-of v3, v2, Lorg/checkerframework/javacutil/UserError;

    if-eqz v3, :cond_0

    .line 299
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/javacutil/UserError;

    .line 301
    .local v3, "ue":Lorg/checkerframework/javacutil/UserError;
    throw v3

    .line 303
    .end local v3    # "ue":Lorg/checkerframework/javacutil/UserError;
    :cond_0
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    .line 306
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p0, v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    .line 304
    const-string v5, "InvocationTargetException when invoking constructor for class %s on args %s; Underlying cause: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 309
    .end local v2    # "err":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when invoking the constructor; parameter types: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 289
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reflectively loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 284
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private printCollectedMessages(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 5
    .param p1, "unit"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 577
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messageStore:Ljava/util/TreeSet;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;

    .line 579
    .local v1, "msg":Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
    iget-object v2, v1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->kind:Ljavax/tools/Diagnostic$Kind;

    iget-object v3, v1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->message:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;->source:Lcom/sun/source/tree/Tree;

    invoke-super {p0, v2, v3, v4, p1}, Lorg/checkerframework/framework/source/SourceChecker;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 580
    .end local v1    # "msg":Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
    goto :goto_0

    .line 582
    :cond_0
    return-void
.end method


# virtual methods
.method protected createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 212
    .local v0, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    if-eq v0, v1, :cond_1

    .line 213
    nop

    .line 215
    const-string v2, "Visitor"

    invoke-static {v0, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getRelatedClassName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    .line 214
    invoke-static {v2, v3, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->invokeConstructorFor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 218
    .local v1, "result":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<*>;"
    if-eqz v1, :cond_0

    .line 219
    return-object v1

    .line 221
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 222
    .end local v1    # "result":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<*>;"
    goto :goto_0

    .line 225
    :cond_1
    new-instance v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-direct {v1, p0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v1
.end method

.method protected bridge synthetic createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public getChecker()Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .locals 0

    .line 330
    return-object p0
.end method

.method public bridge synthetic getChecker()Lorg/checkerframework/framework/source/SourceChecker;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getChecker()Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/checkerframework/common/basetype/BaseTypeContext;
    .locals 0

    .line 325
    return-object p0
.end method

.method public bridge synthetic getContext()Lorg/checkerframework/framework/util/CFContext;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getContext()Lorg/checkerframework/common/basetype/BaseTypeContext;

    move-result-object v0

    return-object v0
.end method

.method protected getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;>;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldResolveReflection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/LinkedHashSet;

    const-class v1, Lorg/checkerframework/common/reflection/MethodValChecker;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/util/HashMap;

    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 721
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 722
    .local v2, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    invoke-virtual {v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 723
    .end local v2    # "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    goto :goto_0

    .line 725
    :cond_0
    return-object v0
.end method

.method public getSubchecker(Ljava/lang/Class;)Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 363
    .local p1, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->immediateSubcheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 364
    .local v1, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 365
    return-object v1

    .line 367
    .end local v1    # "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    :cond_0
    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedLintOptions()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v0, "lintSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "cast"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v1, "cast:redundant"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v1, "cast:unsafe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 258
    .local v2, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    invoke-virtual {v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 259
    .end local v2    # "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    goto :goto_0

    .line 261
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedOptions()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->supportedOptions:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 701
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 702
    .local v0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 704
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 705
    .local v2, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    invoke-virtual {v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSupportedOptions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 706
    .end local v2    # "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    goto :goto_0

    .line 708
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 710
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 709
    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->expandCFOptions(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 708
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 712
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->supportedOptions:Ljava/util/Set;

    .line 714
    .end local v0    # "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->supportedOptions:Ljava/util/Set;

    return-object v0
.end method

.method public getTreePathCacher()Lorg/checkerframework/framework/util/TreePathCacher;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->treePathCacher:Lorg/checkerframework/framework/util/TreePathCacher;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/TreePathCacher;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->treePathCacher:Lorg/checkerframework/framework/util/TreePathCacher;

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->treePathCacher:Lorg/checkerframework/framework/util/TreePathCacher;

    return-object v0
.end method

.method public getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "****>;"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v0

    .line 342
    .local v0, "visitor":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<*>;"
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x0

    return-object v1

    .line 345
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    return-object v1
.end method

.method public getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "****>;U:",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)TT;"
        }
    .end annotation

    .line 383
    .local p1, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubchecker(Ljava/lang/Class;)Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-result-object v0

    .line 384
    .local v0, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    return-object v1

    .line 388
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;"
        }
    .end annotation

    .line 335
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getVisitor()Lorg/checkerframework/framework/source/SourceVisitor;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    return-object v0
.end method

.method public bridge synthetic getVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v0

    return-object v0
.end method

.method public initChecker()V
    .locals 3

    .line 91
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 92
    .local v1, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    invoke-virtual {v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->initChecker()V

    .line 95
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->addOptions(Ljava/util/Map;)V

    .line 98
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->setSupportedLintOptions(Ljava/util/Set;)V

    .line 99
    .end local v1    # "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/checkerframework/common/basetype/BaseTypeChecker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messageStore:Ljava/util/TreeSet;

    .line 105
    :cond_1
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->initChecker()V

    .line 106
    return-void
.end method

.method protected printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 7
    .param p1, "kind"    # Ljavax/tools/Diagnostic$Kind;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "source"    # Lcom/sun/source/tree/Tree;
    .param p4, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 560
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    if-ne v0, p4, :cond_1

    .line 561
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messageStore:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 562
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/framework/source/SourceChecker;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;)V

    goto :goto_0

    .line 564
    :cond_0
    new-instance v0, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;-><init>(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeChecker$1;)V

    .line 565
    .local v0, "checkerMessage":Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messageStore:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v0    # "checkerMessage":Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;
    :goto_0
    return-void

    .line 560
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected processArg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;

    .line 730
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 731
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 732
    .local v0, "carg":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 734
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->processArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 736
    :cond_0
    return-object v1

    .line 737
    .end local v0    # "carg":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    instance-of v0, p1, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 738
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotationFormatter()Lorg/checkerframework/framework/util/AnnotationFormatter;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 740
    invoke-interface {v0, v1}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    .line 738
    return-object v0

    .line 742
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->processArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 1
    .param p1, "newRoot"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 143
    invoke-super {p0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 144
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->parentChecker:Lorg/checkerframework/framework/source/SourceChecker;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->treePathCacher:Lorg/checkerframework/framework/util/TreePathCacher;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/TreePathCacher;->clear()V

    .line 148
    :cond_0
    return-void
.end method

.method protected shouldAddShutdownHook()Z
    .locals 4

    .line 748
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->shouldAddShutdownHook()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getCFGVisualizer()Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 751
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 752
    .local v2, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    invoke-virtual {v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getCFGVisualizer()Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 753
    return v1

    .line 755
    .end local v2    # "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    :cond_1
    goto :goto_0

    .line 756
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 749
    :cond_3
    :goto_1
    return v1
.end method

.method public shouldResolveReflection()Z
    .locals 2

    .line 190
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "resolveReflection"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected shutdownHook()V
    .locals 4

    .line 761
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->shutdownHook()V

    .line 763
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getCFGVisualizer()Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    move-result-object v0

    .line 764
    .local v0, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<***>;"
    if-eqz v0, :cond_0

    .line 765
    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->shutdown()V

    .line 768
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 769
    .local v2, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    invoke-virtual {v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getCFGVisualizer()Lorg/checkerframework/dataflow/cfg/CFGVisualizer;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_1

    .line 771
    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->shutdown()V

    .line 773
    .end local v2    # "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    :cond_1
    goto :goto_0

    .line 774
    :cond_2
    return-void
.end method

.method public typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V
    .locals 8
    .param p1, "element"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "tree"    # Lcom/sun/source/util/TreePath;

    .line 475
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messageStore:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 492
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    .line 494
    .local v1, "log":Lcom/sun/tools/javac/util/Log;
    iget v2, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->errsOnLastExit:I

    .line 495
    .local v2, "nerrorsOfAllPreviousCheckers":I
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 496
    .local v4, "subchecker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    iput v2, v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;->errsOnLastExit:I

    .line 497
    iget-object v5, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messageStore:Ljava/util/TreeSet;

    iput-object v5, v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messageStore:Ljava/util/TreeSet;

    .line 498
    iget v5, v1, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 500
    .local v5, "errorsBeforeTypeChecking":I
    invoke-virtual {v4, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V

    .line 502
    iget v6, v1, Lcom/sun/tools/javac/util/Log;->nerrors:I

    .line 503
    .local v6, "errorsAfterTypeChecking":I
    sub-int v7, v6, v5

    add-int/2addr v2, v7

    .line 504
    .end local v4    # "subchecker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .end local v5    # "errorsBeforeTypeChecking":I
    .end local v6    # "errorsAfterTypeChecking":I
    goto :goto_0

    .line 506
    :cond_1
    iput v2, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->errsOnLastExit:I

    .line 507
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceChecker;->typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V

    .line 509
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 510
    invoke-virtual {p2}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->printCollectedMessages(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 512
    iget v3, v1, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iput v3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->errsOnLastExit:I

    .line 514
    :cond_2
    return-void
.end method

.method public typeProcessingOver()V
    .locals 2

    .line 691
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSubcheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 692
    .local v1, "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    invoke-virtual {v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->typeProcessingOver()V

    .line 693
    .end local v1    # "checker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    goto :goto_0

    .line 695
    :cond_0
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->typeProcessingOver()V

    .line 696
    return-void
.end method

.method protected warnUnneededSuppressions()V
    .locals 6

    .line 524
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->parentChecker:Lorg/checkerframework/framework/source/SourceChecker;

    if-nez v0, :cond_2

    const-string v0, "warnUnneededSuppressions"

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 527
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->elementsWithSuppressedWarnings:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 528
    .local v0, "elementsSuppress":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Element;>;"
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->elementsWithSuppressedWarnings:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 529
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 530
    .local v1, "checkerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messages:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 531
    .local v2, "errorKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker;->subcheckers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 532
    .local v4, "subChecker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    iget-object v5, v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;->elementsWithSuppressedWarnings:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 533
    iget-object v5, v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;->elementsWithSuppressedWarnings:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 534
    invoke-virtual {v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 535
    iget-object v5, v4, Lorg/checkerframework/common/basetype/BaseTypeChecker;->messages:Ljava/util/Properties;

    invoke-virtual {v5}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 536
    invoke-virtual {v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v5

    iget-object v5, v5, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->treesWithSuppressWarnings:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 537
    .end local v4    # "subChecker":Lorg/checkerframework/common/basetype/BaseTypeChecker;
    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->warnUnneedSuppressions(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 540
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v3

    iget-object v3, v3, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->treesWithSuppressWarnings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 541
    return-void

    .line 525
    .end local v0    # "elementsSuppress":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Element;>;"
    .end local v1    # "checkerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "errorKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void
.end method
