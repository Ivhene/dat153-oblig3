.class final Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;
.super Ljava/lang/Object;
.source "AbstractTypeProcessor.java"

# interfaces
.implements Lcom/sun/source/util/TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/AbstractTypeProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributionTaskListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;


# direct methods
.method private constructor <init>(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/javacutil/AbstractTypeProcessor;Lorg/checkerframework/javacutil/AbstractTypeProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/javacutil/AbstractTypeProcessor;
    .param p2, "x1"    # Lorg/checkerframework/javacutil/AbstractTypeProcessor$1;

    .line 148
    invoke-direct {p0, p1}, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;-><init>(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)V

    return-void
.end method


# virtual methods
.method public finished(Lcom/sun/source/util/TaskEvent;)V
    .locals 5
    .param p1, "e"    # Lcom/sun/source/util/TaskEvent;

    .line 152
    invoke-virtual {p1}, Lcom/sun/source/util/TaskEvent;->getKind()Lcom/sun/source/util/TaskEvent$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/util/TaskEvent$Kind;->ANALYZE:Lcom/sun/source/util/TaskEvent$Kind;

    if-eq v0, v1, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-static {v0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$100(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->typeProcessingStart()V

    .line 158
    iget-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$102(Lorg/checkerframework/javacutil/AbstractTypeProcessor;Z)Z

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-static {v0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$200(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    .line 163
    .local v0, "log":Lcom/sun/tools/javac/util/Log;
    invoke-static {}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$300()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-static {v2}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$400(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-virtual {v2}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->typeProcessingOver()V

    .line 165
    invoke-static {v1}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$302(Z)Z

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/sun/source/util/TaskEvent;->getTypeElement()Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 171
    invoke-virtual {p1}, Lcom/sun/source/util/TaskEvent;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-static {v2}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$400(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/source/util/TaskEvent;->getTypeElement()Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    return-void

    .line 179
    :cond_3
    invoke-virtual {p1}, Lcom/sun/source/util/TaskEvent;->getTypeElement()Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 180
    .local v2, "elem":Ljavax/lang/model/element/TypeElement;
    iget-object v3, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-static {v3}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$500(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sun/source/util/Trees;->getPath(Ljavax/lang/model/element/Element;)Lcom/sun/source/util/TreePath;

    move-result-object v3

    .line 182
    .local v3, "p":Lcom/sun/source/util/TreePath;
    iget-object v4, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-virtual {v4, v2, v3}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V

    .line 184
    invoke-static {}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$300()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-static {v4}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$400(Lorg/checkerframework/javacutil/AbstractTypeProcessor;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v0, Lcom/sun/tools/javac/util/Log;->nerrors:I

    if-nez v4, :cond_4

    .line 185
    iget-object v4, p0, Lorg/checkerframework/javacutil/AbstractTypeProcessor$AttributionTaskListener;->this$0:Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-virtual {v4}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->typeProcessingOver()V

    .line 186
    invoke-static {v1}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->access$302(Z)Z

    .line 188
    :cond_4
    return-void

    .line 172
    .end local v2    # "elem":Ljavax/lang/model/element/TypeElement;
    .end local v3    # "p":Lcom/sun/source/util/TreePath;
    :cond_5
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "event task without compilation unit"

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_6
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "event task without a type element"

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public started(Lcom/sun/source/util/TaskEvent;)V
    .locals 0
    .param p1, "e"    # Lcom/sun/source/util/TaskEvent;

    .line 191
    return-void
.end method
