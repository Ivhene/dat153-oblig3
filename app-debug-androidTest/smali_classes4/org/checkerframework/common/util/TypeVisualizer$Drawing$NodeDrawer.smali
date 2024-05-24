.class Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;
.super Ljava/lang/Object;
.source "TypeVisualizer.java"

# interfaces
.implements Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/TypeVisualizer$Drawing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeDrawer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final annoFormatter:Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

.field final synthetic this$0:Lorg/checkerframework/common/util/TypeVisualizer$Drawing;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->this$0:Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance p1, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

    invoke-direct {p1}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->annoFormatter:Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

    .line 425
    return-void
.end method

.method private visitAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 428
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 429
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 430
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method


# virtual methods
.method public addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "label"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->this$0:Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    invoke-static {v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->access$200(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->makeLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "attributes"    # Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->this$0:Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    invoke-static {v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->access$200(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->makeLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method public checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 569
    new-instance v0, Lorg/checkerframework/common/util/TypeVisualizer$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Node;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/util/TypeVisualizer$1;)V

    .line 570
    .local v0, "node":Lorg/checkerframework/common/util/TypeVisualizer$Node;
    iget-object v1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->this$0:Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    invoke-static {v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->access$400(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const/4 v1, 0x0

    return v1

    .line 573
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->this$0:Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    invoke-static {v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->access$400(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->this$0:Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    invoke-static {v2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->access$508(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const/4 v1, 0x1

    return v1
.end method

.method public getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;
    .locals 6
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v0, "annoNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 563
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->annoFormatter:Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;->formatAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, "\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 565
    :cond_0
    const-string v1, " "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "label"    # Ljava/lang/String;

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->makeLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "attributes"    # Ljava/lang/String;

    .line 583
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 584
    .local v0, "attr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->this$0:Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    invoke-static {v2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->access$400(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/common/util/TypeVisualizer$Node;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lorg/checkerframework/common/util/TypeVisualizer$Node;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/util/TypeVisualizer$1;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [label=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeMethodLabel(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/lang/String;
    .locals 4
    .param p1, "methodType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 597
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 599
    .local v0, "methodElem":Ljavax/lang/model/element/ExecutableElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v2, ", "

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v2, ","

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 435
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p1, p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_0
    return-object v0
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 444
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 503
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 507
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 449
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "<...>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    const-string v1, "shape=box"

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitAll(Ljava/util/List;)V

    .line 459
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 483
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->makeMethodLabel(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shape=box,peripheries=2"

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 487
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitAll(Ljava/util/List;)V

    .line 489
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 490
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitAll(Ljava/util/List;)V

    .line 492
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitAll(Ljava/util/List;)V

    .line 498
    const/4 v0, 0x0

    return-object v0

    .line 495
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executable types should never be recursive\ntype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 464
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Intersection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shape=octagon"

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitAll(Ljava/util/List;)V

    .line 469
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 535
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;)V

    .line 538
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 543
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NullType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;)V

    .line 546
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 527
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;)V

    .line 530
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 512
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 517
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v1, "shape=invtrapezium"

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 520
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 522
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 474
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Union"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shape=doubleoctagon"

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitAll(Ljava/util/List;)V

    .line 478
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 551
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->checkOrAdd(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->getAnnoStr(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shape=trapezium"

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->addLabeledNode(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 554
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 556
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
