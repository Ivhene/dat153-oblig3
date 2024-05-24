.class public Lorg/checkerframework/common/util/report/ReportVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "ReportVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/report/ReportVisitor$ReportTypeValidator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final modifiers:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final treeKinds:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sun/source/tree/Tree$Kind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 10
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 52
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 54
    const-string v0, "reportTreeKinds"

    invoke-virtual {p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "trees":Ljava/lang/String;
    const-class v1, Lcom/sun/source/tree/Tree$Kind;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->treeKinds:Ljava/util/EnumSet;

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .line 58
    .local v7, "treeKind":Ljava/lang/String;
    iget-object v8, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->treeKinds:Ljava/util/EnumSet;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/source/tree/Tree$Kind;->valueOf(Ljava/lang/String;)Lcom/sun/source/tree/Tree$Kind;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v7    # "treeKind":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "trees":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 61
    :cond_1
    iput-object v4, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->treeKinds:Ljava/util/EnumSet;

    .line 64
    :goto_1
    const-string v0, "reportModifiers"

    invoke-virtual {p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {p1, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "mods":Ljava/lang/String;
    const-class v1, Ljavax/lang/model/element/Modifier;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->modifiers:Ljava/util/EnumSet;

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 68
    .local v4, "modifier":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->modifiers:Ljava/util/EnumSet;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/lang/model/element/Modifier;->valueOf(Ljava/lang/String;)Ljavax/lang/model/element/Modifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v4    # "modifier":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 70
    .end local v0    # "mods":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 71
    :cond_3
    iput-object v4, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->modifiers:Ljava/util/EnumSet;

    .line 73
    :goto_3
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/common/util/report/ReportVisitor;Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/common/util/report/ReportVisitor;
    .param p1, "x1"    # Lcom/sun/source/tree/Tree;
    .param p2, "x2"    # Ljavax/lang/model/element/Element;

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->checkReportUse(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private checkReportUse(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "member"    # Ljavax/lang/model/element/Element;

    .line 92
    move-object v0, p2

    .line 93
    .local v0, "loop":Ljavax/lang/model/element/Element;
    :goto_0
    if-eqz v0, :cond_3

    .line 94
    iget-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/util/report/qual/ReportUse;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, "report":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 96
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 100
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    .line 102
    invoke-static {p2}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    filled-new-array {p1, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 97
    const-string v4, "usage"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 96
    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 105
    goto :goto_2

    .line 107
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_2

    .line 108
    move-object v2, v0

    check-cast v2, Ljavax/lang/model/element/PackageElement;

    iget-object v3, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/ElementUtils;->parentPackage(Ljavax/lang/model/element/PackageElement;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 114
    .end local v1    # "report":Z
    goto :goto_0

    .line 115
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected createTypeValidator()Lorg/checkerframework/common/basetype/BaseTypeValidator;
    .locals 3

    .line 309
    new-instance v0, Lorg/checkerframework/common/util/report/ReportVisitor$ReportTypeValidator;

    iget-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-direct {v0, p0, v1, p0, v2}, Lorg/checkerframework/common/util/report/ReportVisitor$ReportTypeValidator;-><init>(Lorg/checkerframework/common/util/report/ReportVisitor;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected bridge synthetic createTypeValidator()Lorg/checkerframework/common/basetype/TypeValidator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/common/util/report/ReportVisitor;->createTypeValidator()Lorg/checkerframework/common/basetype/BaseTypeValidator;

    move-result-object v0

    return-object v0
.end method

.method public processClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;

    .line 127
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 128
    .local v0, "member":Ljavax/lang/model/element/TypeElement;
    const/4 v1, 0x0

    .line 133
    .local v1, "report":Z
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/ElementUtils;->getSuperTypes(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "suptypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 135
    .local v4, "sup":Ljavax/lang/model/element/TypeElement;
    iget-object v5, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v6, Lorg/checkerframework/common/util/report/qual/ReportInherit;

    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    move v1, v5

    .line 136
    if-eqz v1, :cond_1

    .line 137
    iget-object v5, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 138
    invoke-static {v4}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {p1, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "inherit"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 137
    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 140
    .end local v4    # "sup":Ljavax/lang/model/element/TypeElement;
    :cond_1
    goto :goto_0

    .line 141
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->processClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 142
    return-void
.end method

.method public bridge synthetic scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->treeKinds:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tree.Kind."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 244
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/AssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 231
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 232
    .local v0, "member":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/util/report/qual/ReportWrite;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 234
    .local v1, "report":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 235
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 236
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "fieldwrite"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 235
    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 238
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 218
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 219
    .local v0, "member":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/util/report/qual/ReportReadWrite;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 221
    .local v1, "report":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 222
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 223
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "fieldreadwrite"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 222
    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 226
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/InstanceOfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 291
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 204
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 205
    .local v0, "member":Ljavax/lang/model/element/Element;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/util/report/ReportVisitor;->checkReportUse(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V

    .line 206
    iget-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/util/report/qual/ReportReadWrite;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 208
    .local v1, "report":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 209
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 210
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "fieldreadwrite"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 209
    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 213
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    return-object v2
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 146
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 147
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    const/4 v1, 0x0

    .line 150
    .local v1, "report":Z
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->elements:Ljavax/lang/model/util/Elements;

    iget-object v3, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 151
    invoke-static {v2, v3, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->overriddenMethods(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Map;

    move-result-object v2

    .line 153
    .local v2, "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 155
    .local v4, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    .line 156
    .local v5, "exe":Ljavax/lang/model/element/ExecutableElement;
    iget-object v6, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v7, Lorg/checkerframework/common/util/report/qual/ReportOverride;

    invoke-virtual {v6, v5, v7}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    move v1, v6

    .line 157
    if-eqz v1, :cond_1

    .line 159
    move-object v0, v5

    .line 160
    goto :goto_2

    .line 162
    .end local v4    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v5    # "exe":Ljavax/lang/model/element/ExecutableElement;
    :cond_1
    goto :goto_0

    .line 164
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 165
    iget-object v3, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 166
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "override"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 165
    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 168
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 173
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 174
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/util/report/ReportVisitor;->checkReportUse(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V

    .line 175
    iget-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/util/report/qual/ReportCall;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 177
    .local v1, "report":Z
    :goto_0
    if-nez v1, :cond_3

    .line 179
    iget-object v4, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->elements:Ljavax/lang/model/util/Elements;

    iget-object v5, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 180
    invoke-static {v4, v5, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->overriddenMethods(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Map;

    move-result-object v4

    .line 182
    .local v4, "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 184
    .local v6, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/ExecutableElement;

    .line 185
    .local v7, "exe":Ljavax/lang/model/element/ExecutableElement;
    iget-object v8, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v8, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v9, Lorg/checkerframework/common/util/report/qual/ReportCall;

    invoke-virtual {v8, v7, v9}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    if-eqz v8, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_2
    move v1, v8

    .line 186
    if-eqz v1, :cond_2

    .line 189
    move-object v0, v7

    .line 190
    goto :goto_3

    .line 192
    .end local v6    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v7    # "exe":Ljavax/lang/model/element/ExecutableElement;
    :cond_2
    goto :goto_1

    .line 195
    .end local v4    # "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 196
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 197
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "methodcall"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 199
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/ModifiersTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 297
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->modifiers:Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {p1}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Modifier;

    .line 299
    .local v1, "mod":Ljavax/lang/model/element/Modifier;
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->modifiers:Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modifier."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 302
    .end local v1    # "mod":Ljavax/lang/model/element/Modifier;
    :cond_0
    goto :goto_0

    .line 304
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitModifiers(Lcom/sun/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 279
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 249
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 250
    .local v0, "member":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/common/util/report/qual/ReportCreation;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 251
    .local v1, "report":Z
    :goto_0
    if-nez v1, :cond_2

    .line 253
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 254
    iget-object v4, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v5, Lorg/checkerframework/common/util/report/qual/ReportCreation;

    invoke-virtual {v4, v0, v5}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    move v1, v4

    .line 256
    :cond_2
    if-nez v1, :cond_5

    .line 258
    move-object v4, v0

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    iget-object v5, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/ElementUtils;->getSuperTypes(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;

    move-result-object v4

    .line 259
    .local v4, "suptypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 260
    .local v6, "sup":Ljavax/lang/model/element/TypeElement;
    iget-object v7, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v7, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    const-class v8, Lorg/checkerframework/common/util/report/qual/ReportCreation;

    invoke-virtual {v7, v6, v8}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    if-eqz v7, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    move v1, v7

    .line 261
    if-eqz v1, :cond_4

    .line 263
    move-object v0, v6

    .line 264
    goto :goto_4

    .line 266
    .end local v6    # "sup":Ljavax/lang/model/element/TypeElement;
    :cond_4
    goto :goto_2

    .line 269
    .end local v4    # "suptypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 270
    iget-object v2, p0, Lorg/checkerframework/common/util/report/ReportVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 271
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "creation"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 270
    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 273
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 285
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
