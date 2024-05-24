.class public final synthetic Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;

.field public final synthetic f$2:Lorg/checkerframework/com/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;->f$2:Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase$$ExternalSyntheticLambda0;->f$2:Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/GeneratedJavaParserBase;->lambda$propagateRangeGrowthOnRight$0$org-checkerframework-com-github-javaparser-GeneratedJavaParserBase(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method
