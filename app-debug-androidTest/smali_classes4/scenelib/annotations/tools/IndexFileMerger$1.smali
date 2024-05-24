.class final Lscenelib/annotations/tools/IndexFileMerger$1;
.super Ljava/lang/Object;
.source "IndexFileMerger.java"

# interfaces
.implements Lscenelib/annotations/el/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/tools/IndexFileMerger;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscenelib/annotations/el/ElementVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method visit(Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AElement;

    .line 150
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0, v0}, Lscenelib/annotations/el/AElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "d"    # Lscenelib/annotations/el/AnnotationDef;
    .param p2, "v"    # Ljava/lang/Void;

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitBlock(Lscenelib/annotations/el/ABlock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitBlock(Lscenelib/annotations/el/ABlock;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lscenelib/annotations/el/ABlock;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/ABlock;
    .param p2, "v"    # Ljava/lang/Void;

    .line 173
    iget-object v0, p1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 174
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitClass(Lscenelib/annotations/el/AClass;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitClass(Lscenelib/annotations/el/AClass;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lscenelib/annotations/el/AClass;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AClass;
    .param p2, "v"    # Ljava/lang/Void;

    .line 179
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 180
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 181
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 182
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 183
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 184
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 185
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 186
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/ADeclaration;
    .param p2, "v"    # Ljava/lang/Void;

    .line 191
    iget-object v0, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 192
    iget-object v0, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 193
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AElement;
    .param p2, "v"    # Ljava/lang/Void;

    .line 238
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visit(Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AExpression;
    .param p2, "v"    # Ljava/lang/Void;

    .line 198
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 199
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 200
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 201
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 202
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 203
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 204
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitField(Lscenelib/annotations/el/AField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitField(Lscenelib/annotations/el/AField;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitField(Lscenelib/annotations/el/AField;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AField;
    .param p2, "v"    # Ljava/lang/Void;

    .line 209
    iget-object v0, p1, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visit(Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    .line 210
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method visitMap(Ljava/util/Map;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Lscenelib/annotations/el/AElement;",
            ">(",
            "Ljava/util/Map<",
            "TT;TE;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 155
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TT;TE;>;"
    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AElement;

    .local v1, "el":Lscenelib/annotations/el/AElement;, "TE;"
    invoke-virtual {p0, v1}, Lscenelib/annotations/tools/IndexFileMerger$1;->visit(Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    goto :goto_0

    .line 158
    .end local v1    # "el":Lscenelib/annotations/el/AElement;, "TE;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lscenelib/annotations/el/AMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMethod(Lscenelib/annotations/el/AMethod;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lscenelib/annotations/el/AMethod;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AMethod;
    .param p2, "v"    # Ljava/lang/Void;

    .line 215
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visit(Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    .line 216
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 217
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 218
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visit(Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    .line 219
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visit(Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    .line 220
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 221
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/ATypeElement;
    .param p2, "v"    # Ljava/lang/Void;

    .line 226
    iget-object v0, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v0}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitMap(Ljava/util/Map;)Ljava/lang/Void;

    .line 227
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/ATypeElementWithType;
    .param p2, "v"    # Ljava/lang/Void;

    .line 233
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/tools/IndexFileMerger$1;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
