.class Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;
.super Lorg/checkerframework/framework/source/SourceVisitor;
.source "AnnotationStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/count/AnnotationStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/source/SourceVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotations:Z

.field private final locations:Z

.field final synthetic this$0:Lorg/checkerframework/common/util/count/AnnotationStatistics;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/util/count/AnnotationStatistics;Lorg/checkerframework/common/util/count/AnnotationStatistics;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/common/util/count/AnnotationStatistics;
    .param p2, "l"    # Lorg/checkerframework/common/util/count/AnnotationStatistics;

    .line 102
    iput-object p1, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/AnnotationStatistics;

    .line 103
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/source/SourceVisitor;-><init>(Lorg/checkerframework/framework/source/SourceChecker;)V

    .line 105
    const-string v0, "nolocations"

    invoke-virtual {p2, v0}, Lorg/checkerframework/common/util/count/AnnotationStatistics;->hasOption(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    .line 106
    const-string v0, "annotations"

    invoke-virtual {p2, v0}, Lorg/checkerframework/common/util/count/AnnotationStatistics;->hasOption(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->annotations:Z

    .line 107
    return-void
.end method


# virtual methods
.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 111
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->annotations:Z

    if-eqz v0, :cond_3

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 113
    .local v0, "annoName":Ljavax/lang/model/element/Name;
    iget-object v1, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/AnnotationStatistics;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/util/count/AnnotationStatistics;->incrementCount(Ljavax/lang/model/element/Name;)V

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "isBodyAnnotation":Z
    invoke-virtual {p0}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 124
    .local v2, "path":Lcom/sun/source/util/TreePath;
    const/4 v3, 0x0

    .line 125
    .local v3, "prev":Lcom/sun/source/tree/Tree;
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    .line 126
    .local v5, "t":Lcom/sun/source/tree/Tree;
    if-eqz v3, :cond_0

    .line 127
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_0

    .line 128
    invoke-interface {v5}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 130
    goto :goto_1

    .line 132
    :cond_0
    move-object v3, v5

    .line 133
    .end local v5    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 137
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getAnnotationType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    iget-object v6, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->root:Lcom/sun/source/tree/CompilationUnitTree;

    .line 139
    invoke-interface {v6}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v6

    invoke-interface {v6}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 140
    if-eqz v1, :cond_2

    const-string v6, "body"

    goto :goto_2

    :cond_2
    const-string v6, "sig"

    :goto_2
    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 135
    const-string v6, ":annotation %s %s %s %s%n"

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 142
    .end local v0    # "annoName":Ljavax/lang/model/element/Name;
    .end local v1    # "isBodyAnnotation":Z
    .end local v2    # "path":Lcom/sun/source/util/TreePath;
    .end local v3    # "prev":Lcom/sun/source/tree/Tree;
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ArrayTypeTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 147
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "array type"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 155
    iget-object v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/AnnotationStatistics;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/util/count/AnnotationStatistics;->shouldSkipDefs(Lcom/sun/source/tree/ClassTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_2

    .line 162
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getExtendsClause()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "class extends"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 167
    .local v1, "t":Lcom/sun/source/tree/Tree;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "class implements"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    .end local v1    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 170
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/InstanceOfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 238
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "instanceof"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 175
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_1

    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "method return"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "method receiver"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 179
    .local v1, "t":Lcom/sun/source/tree/Tree;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "method throws"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    .end local v1    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 182
    .restart local v1    # "t":Lcom/sun/source/tree/Tree;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "method param"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    .end local v1    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_1

    .line 185
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 198
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 200
    .local v1, "t":Lcom/sun/source/tree/Tree;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "method invocation type argument"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    .end local v1    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 203
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 219
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "new array"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 222
    .local v1, "t":Lcom/sun/source/tree/Tree;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "new array dimension"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    .end local v1    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 208
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "new class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 211
    .local v1, "t":Lcom/sun/source/tree/Tree;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "new class type argument"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    .end local v1    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/ParameterizedTypeTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 246
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 248
    .local v1, "t":Lcom/sun/source/tree/Tree;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "parameterized type"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    .end local v1    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 251
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 230
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "typecast"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/TypeParameterTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 256
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {p1}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 258
    .local v1, "t":Lcom/sun/source/tree/Tree;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "type parameter bound"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    .end local v1    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 261
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 190
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "variable"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/WildcardTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 266
    iget-boolean v0, p0, Lorg/checkerframework/common/util/count/AnnotationStatistics$Visitor;->locations:Z

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wildcard"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
