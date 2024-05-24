.class public Lorg/checkerframework/common/util/count/JavaCodeStatistics;
.super Lorg/checkerframework/framework/source/SourceChecker;
.source "JavaCodeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;
.end annotation


# instance fields
.field arrayAccesses:I

.field generics:I

.field numberOfIndexWarningSuppressions:I

.field typecasts:I

.field warningKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/framework/source/SourceChecker;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    .line 47
    iput v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->arrayAccesses:I

    .line 49
    iput v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->typecasts:I

    .line 51
    const-string v1, "index"

    const-string v2, "lowerbound"

    const-string v3, "samelen"

    const-string v4, "searchindex"

    const-string v5, "substringindex"

    const-string v6, "upperbound"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->warningKeys:[Ljava/lang/String;

    .line 58
    iput v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->numberOfIndexWarningSuppressions:I

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

    .line 72
    new-instance v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;

    invoke-direct {v0, p0, p0}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;-><init>(Lorg/checkerframework/common/util/count/JavaCodeStatistics;Lorg/checkerframework/common/util/count/JavaCodeStatistics;)V

    return-object v0
.end method

.method public getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAnnotationProvider is not implemented for this class."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public typeProcessingOver()V
    .locals 3

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Found %d generic type uses.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->arrayAccesses:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Found %d array accesses and creations.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->typecasts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Found %d typecasts.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->numberOfIndexWarningSuppressions:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 65
    const-string v2, "Found %d warning suppression annotations for the Index Checker.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 68
    return-void
.end method
