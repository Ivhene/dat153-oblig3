.class public Lorg/checkerframework/common/util/count/AnnotationStatistics;
.super Lorg/checkerframework/framework/source/SourceChecker;
.source "AnnotationStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;
.end annotation

.annotation runtime Lorg/checkerframework/framework/source/SupportedOptions;
    value = {
        "nolocations",
        "annotations"
    }
.end annotation


# instance fields
.field final annotationCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/checkerframework/framework/source/SourceChecker;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics;->annotationCount:Ljava/util/Map;

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

    .line 91
    new-instance v0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;

    invoke-direct {v0, p0, p0}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;-><init>(Lorg/checkerframework/common/util/count/AnnotationStatistics;Lorg/checkerframework/common/util/count/AnnotationStatistics;)V

    return-object v0
.end method

.method public getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAnnotationProvider is not implemented for this class."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected incrementCount(Ljavax/lang/model/element/Name;)V
    .locals 4
    .param p1, "annoName"    # Ljavax/lang/model/element/Name;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "annoString":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics;->annotationCount:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics;->annotationCount:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics;->annotationCount:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_0
    return-void
.end method

.method public typeProcessingOver()V
    .locals 5

    .line 69
    iget-object v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics;->annotationCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No annotations found."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Found annotations: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics;->annotationCount:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics;->annotationCount:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 77
    :cond_1
    :goto_1
    return-void
.end method
