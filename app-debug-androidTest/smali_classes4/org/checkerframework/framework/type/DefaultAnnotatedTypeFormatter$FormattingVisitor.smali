.class public Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;
.super Ljava/lang/Object;
.source "DefaultAnnotatedTypeFormatter.java"

# interfaces
.implements Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FormattingVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
        "Ljava/lang/String;",
        "Ljava/util/Set<",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

.field protected currentPrintInvisibleSetting:Z

.field protected currentPrintVerboseGenerics:Z

.field protected final defaultInvisiblesSetting:Z

.field protected final defaultPrintVerboseGenerics:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/util/AnnotationFormatter;ZZ)V
    .locals 1
    .param p1, "annoFormatter"    # Lorg/checkerframework/framework/util/AnnotationFormatter;
    .param p2, "printVerboseGenerics"    # Z
    .param p3, "defaultInvisiblesSetting"    # Z

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 124
    iput-boolean p2, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->defaultPrintVerboseGenerics:Z

    .line 125
    iput-boolean p2, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintVerboseGenerics:Z

    .line 126
    iput-boolean p3, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->defaultInvisiblesSetting:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 128
    return-void
.end method


# virtual methods
.method protected formatFlatType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;
    .locals 4
    .param p1, "flatType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 421
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    iget-boolean v3, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 420
    invoke-interface {v1, v2, v3}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    return-object v0
.end method

.method protected printBound(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "field"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 152
    .local p3, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintVerboseGenerics:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 154
    :cond_0
    return-void

    .line 157
    :cond_1
    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    if-nez p2, :cond_2

    .line 162
    const-string v0, "<null>"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_3

    .line 164
    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 168
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    iget-boolean v2, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 167
    invoke-interface {v0, v1, v2}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, "Void"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_0
    return-void
.end method

.method protected resetPrintVerboseSettings()V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->defaultInvisiblesSetting:Z

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 139
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->defaultPrintVerboseGenerics:Z

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintVerboseGenerics:Z

    .line 140
    return-void
.end method

.method protected setVerboseSettings(Z)V
    .locals 0
    .param p1, "printVerbose"    # Z

    .line 132
    iput-boolean p1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 133
    iput-boolean p1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintVerboseGenerics:Z

    .line 134
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 176
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    .local p2, "annotatedTypeVariables":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 313
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p1

    .line 318
    .local v1, "array":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :goto_0
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 319
    .local v2, "component":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 323
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    iget-boolean v5, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 322
    invoke-interface {v3, v4, v5}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_0
    const-string v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    instance-of v3, v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-nez v3, :cond_1

    .line 327
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    nop

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 330
    :cond_1
    move-object v1, v2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    goto :goto_0
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/Set;)Ljava/lang/String;
    .locals 8
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 187
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->isDeclaration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "/*DECL*/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 196
    .local v1, "typeElt":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "smpl":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 204
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    iget-boolean v5, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 203
    invoke-interface {v3, v4, v5}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v3, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 209
    iget-object v3, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    .line 210
    .local v3, "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 211
    const-string v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const/4 v4, 0x1

    .line 214
    .local v4, "isFirst":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 215
    .local v6, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v4, :cond_3

    .line 216
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_3
    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v4, 0x0

    .line 220
    .end local v6    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 221
    :cond_4
    const-string v5, ">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .end local v3    # "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v4    # "isFirst":Z
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 261
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_1

    .line 263
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v1, "typeVars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 266
    .local v4, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p0, v4, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v4    # "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 268
    :cond_0
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .end local v1    # "typeVars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 274
    :cond_2
    const-string v1, "<UNKNOWNRETURN>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 278
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 280
    :cond_3
    const-string v1, "METHOD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :goto_2
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 284
    .local v1, "rcv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz v1, :cond_4

    .line 285
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v3, " this"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 289
    const/4 v3, 0x0

    .line 290
    .local v3, "p":I
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 291
    .local v5, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-nez v1, :cond_5

    if-lez v3, :cond_6

    .line 292
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_6
    invoke-virtual {p0, v5, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v6, " p"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "p":I
    .local v6, "p":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .end local v5    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move v3, v6

    goto :goto_3

    .line 301
    .end local v6    # "p":I
    :cond_7
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 303
    const-string v2, " throws "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 305
    .local v3, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .end local v3    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_4

    .line 308
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 230
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 233
    .local v1, "isFirst":Z
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 234
    .local v3, "adt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v1, :cond_0

    .line 235
    const-string v4, " & "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v1, 0x0

    .line 239
    .end local v3    # "adt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 374
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->formatFlatType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 380
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 381
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    iget-boolean v3, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 380
    invoke-interface {v1, v2, v3}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 368
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->formatFlatType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 338
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->actualType:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 342
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->isDeclaration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    if-eqz v1, :cond_0

    .line 343
    const-string v1, "/*DECL*/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_0
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintVerboseGenerics:Z

    if-eqz v1, :cond_1

    .line 349
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1
    const-string v1, "extends"

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, v0}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->printBound(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljava/lang/StringBuilder;)V

    .line 352
    const-string v1, "super"

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, v0}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->printBound(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljava/lang/StringBuilder;)V

    .line 353
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintVerboseGenerics:Z

    if-eqz v1, :cond_2

    .line 354
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 359
    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v1

    .line 361
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 245
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 248
    .local v1, "isFirst":Z
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 249
    .local v3, "adt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v1, :cond_0

    .line 250
    const-string v4, " | "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_0
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const/4 v1, 0x0

    .line 254
    .end local v3    # "adt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 387
    .local p2, "visiting":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "/*INFERENCE FAILED for:*/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 394
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getAnnotationsField()Ljava/util/Set;

    move-result-object v2

    iget-boolean v3, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintInvisibleSetting:Z

    .line 393
    invoke-interface {v1, v2, v3}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 400
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintVerboseGenerics:Z

    if-eqz v1, :cond_1

    .line 403
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_1
    const-string v1, "extends"

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, v0}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->printBound(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljava/lang/StringBuilder;)V

    .line 406
    const-string v1, "super"

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, v0}, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->printBound(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;Ljava/lang/StringBuilder;)V

    .line 407
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/DefaultAnnotatedTypeFormatter$FormattingVisitor;->currentPrintVerboseGenerics:Z

    if-eqz v1, :cond_2

    .line 408
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 413
    goto :goto_0

    .line 412
    :catchall_0
    move-exception v1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v1

    .line 415
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
