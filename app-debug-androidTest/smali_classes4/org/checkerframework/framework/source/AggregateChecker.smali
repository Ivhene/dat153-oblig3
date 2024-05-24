.class public abstract Lorg/checkerframework/framework/source/AggregateChecker;
.super Lorg/checkerframework/framework/source/SourceChecker;
.source "AggregateChecker.java"


# instance fields
.field private allCheckersInited:Z

.field protected final checkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/source/SourceChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/framework/source/SourceChecker;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->allCheckersInited:Z

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/AggregateChecker;->getSupportedCheckers()Ljava/util/Collection;

    move-result-object v1

    .line 45
    .local v1, "checkerClasses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lorg/checkerframework/framework/source/SourceChecker;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    .line 46
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 48
    .local v3, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/framework/source/SourceChecker;>;"
    :try_start_0
    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/source/SourceChecker;

    .line 49
    .local v4, "instance":Lorg/checkerframework/framework/source/SourceChecker;
    invoke-virtual {v4, p0}, Lorg/checkerframework/framework/source/SourceChecker;->setParentChecker(Lorg/checkerframework/framework/source/SourceChecker;)V

    .line 50
    iget-object v5, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .end local v4    # "instance":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_1

    .line 51
    :catch_0
    move-exception v4

    .line 52
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t instantiate an instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v6, v7}, Lorg/checkerframework/framework/source/AggregateChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .end local v3    # "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/framework/source/SourceChecker;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method protected createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/source/SourceVisitor<",
            "**>;"
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/checkerframework/framework/source/AggregateChecker$1;

    invoke-direct {v0, p0, p0}, Lorg/checkerframework/framework/source/AggregateChecker$1;-><init>(Lorg/checkerframework/framework/source/AggregateChecker;Lorg/checkerframework/framework/source/SourceChecker;)V

    return-object v0
.end method

.method public final getOptions()Ljava/util/Map;
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

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 142
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/source/SourceChecker;

    .line 143
    .local v2, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    invoke-virtual {v2}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 144
    .end local v2    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_0

    .line 145
    :cond_0
    return-object v0
.end method

.method protected abstract getSupportedCheckers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/framework/source/SourceChecker;",
            ">;>;"
        }
    .end annotation
.end method

.method public final getSupportedLintOptions()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 151
    .local v0, "lints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/source/SourceChecker;

    .line 152
    .local v2, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    invoke-virtual {v2}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 153
    .end local v2    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_0

    .line 154
    :cond_0
    return-object v0
.end method

.method public final getSupportedOptions()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    .local v0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/source/SourceChecker;

    .line 132
    .local v2, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    invoke-virtual {v2}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedOptions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 133
    .end local v2    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_0

    .line 134
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 135
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

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/source/AggregateChecker;->expandCFOptions(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 136
    return-object v0
.end method

.method public initChecker()V
    .locals 3

    .line 76
    iget-object v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->messager:Ljavax/annotation/processing/Messager;

    .line 79
    iget-object v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/source/SourceChecker;

    .line 80
    .local v1, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    invoke-virtual {v1}, Lorg/checkerframework/framework/source/SourceChecker;->initChecker()V

    .line 81
    .end local v1    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/source/SourceChecker;

    .line 86
    .restart local v1    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    invoke-super {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/source/SourceChecker;->addOptions(Ljava/util/Map;)V

    .line 89
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/AggregateChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/source/SourceChecker;->setSupportedLintOptions(Ljava/util/Set;)V

    .line 90
    .end local v1    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_1

    .line 91
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->allCheckersInited:Z

    .line 92
    return-void
.end method

.method protected setProcessingEnvironment(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 64
    invoke-super {p0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->setProcessingEnvironment(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 65
    iget-object v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/source/SourceChecker;

    .line 66
    .local v1, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/source/SourceChecker;->setProcessingEnvironment(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 67
    .end local v1    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public final typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V
    .locals 5
    .param p1, "element"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "tree"    # Lcom/sun/source/util/TreePath;

    .line 100
    iget-object v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v1

    .line 102
    .local v1, "log":Lcom/sun/tools/javac/util/Log;
    iget v2, v1, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iget v3, p0, Lorg/checkerframework/framework/source/AggregateChecker;->errsOnLastExit:I

    if-le v2, v3, :cond_0

    .line 106
    iget v2, v1, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iput v2, p0, Lorg/checkerframework/framework/source/AggregateChecker;->errsOnLastExit:I

    .line 107
    return-void

    .line 109
    :cond_0
    iget-boolean v2, p0, Lorg/checkerframework/framework/source/AggregateChecker;->allCheckersInited:Z

    if-nez v2, :cond_1

    .line 112
    return-void

    .line 114
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/source/SourceChecker;

    .line 115
    .local v3, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    iget v4, p0, Lorg/checkerframework/framework/source/AggregateChecker;->errsOnLastExit:I

    iput v4, v3, Lorg/checkerframework/framework/source/SourceChecker;->errsOnLastExit:I

    .line 116
    invoke-virtual {v3, p1, p2}, Lorg/checkerframework/framework/source/SourceChecker;->typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V

    .line 117
    iget v4, v3, Lorg/checkerframework/framework/source/SourceChecker;->errsOnLastExit:I

    iput v4, p0, Lorg/checkerframework/framework/source/AggregateChecker;->errsOnLastExit:I

    .line 118
    .end local v3    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_0

    .line 119
    :cond_2
    return-void
.end method

.method public typeProcessingOver()V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/checkerframework/framework/source/AggregateChecker;->checkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/source/SourceChecker;

    .line 124
    .local v1, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    invoke-virtual {v1}, Lorg/checkerframework/framework/source/SourceChecker;->typeProcessingOver()V

    .line 125
    .end local v1    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method
