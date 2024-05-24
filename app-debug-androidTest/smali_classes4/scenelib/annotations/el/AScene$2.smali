.class final Lscenelib/annotations/el/AScene$2;
.super Ljava/lang/Object;
.source "AScene.java"

# interfaces
.implements Lscenelib/annotations/el/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/el/AScene;
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
        "Lscenelib/annotations/el/AElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AnnotationDef;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitBlock(Lscenelib/annotations/el/ABlock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitBlock(Lscenelib/annotations/el/ABlock;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lscenelib/annotations/el/ABlock;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/ABlock;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 258
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ABlock;

    .line 259
    .local v0, "b":Lscenelib/annotations/el/ABlock;
    iget-object v1, p1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 260
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitClass(Lscenelib/annotations/el/AClass;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitClass(Lscenelib/annotations/el/AClass;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lscenelib/annotations/el/AClass;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/AClass;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 265
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/AClass;

    .line 266
    .local v0, "c":Lscenelib/annotations/el/AClass;
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 267
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 268
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 269
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 270
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 271
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 272
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 273
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/ADeclaration;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 278
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ADeclaration;

    .line 279
    .local v0, "d":Lscenelib/annotations/el/ADeclaration;
    iget-object v1, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 280
    iget-object v1, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 281
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitElement(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitElement(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitElement(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/AElement;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 334
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->description:Ljava/lang/Object;

    iget-object v1, p2, Lscenelib/annotations/el/AElement;->description:Ljava/lang/Object;

    invoke-static {v0, v1}, Lscenelib/annotations/el/AScene;->checkObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p2, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 336
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 337
    invoke-static {}, Lscenelib/annotations/el/AScene;->access$000()V

    .line 339
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 340
    .local v1, "a":Lscenelib/annotations/Annotation;
    iget-object v2, p2, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    invoke-static {}, Lscenelib/annotations/el/AScene;->access$000()V

    .line 343
    .end local v1    # "a":Lscenelib/annotations/Annotation;
    :cond_1
    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v1, p2, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-static {v0, v1}, Lscenelib/annotations/el/AScene;->checkElem(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)V

    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitExpression(Lscenelib/annotations/el/AExpression;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExpression(Lscenelib/annotations/el/AExpression;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/AExpression;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 286
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/AExpression;

    .line 287
    .local v0, "e":Lscenelib/annotations/el/AExpression;
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->id:Ljava/lang/Object;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->id:Ljava/lang/Object;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 289
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 290
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 291
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 292
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 293
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 294
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitElement(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitField(Lscenelib/annotations/el/AField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitField(Lscenelib/annotations/el/AField;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitField(Lscenelib/annotations/el/AField;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/AField;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 299
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/AField;

    .line 300
    .local v0, "f":Lscenelib/annotations/el/AField;
    iget-object v1, p1, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    iget-object v2, v0, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElem(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)V

    .line 301
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitMethod(Lscenelib/annotations/el/AMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitMethod(Lscenelib/annotations/el/AMethod;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lscenelib/annotations/el/AMethod;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/AMethod;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 306
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/AMethod;

    .line 307
    .local v0, "m":Lscenelib/annotations/el/AMethod;
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElem(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)V

    .line 309
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElem(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)V

    .line 310
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 311
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 312
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 313
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/ATypeElement;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 318
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    .line 319
    .local v0, "t":Lscenelib/annotations/el/ATypeElement;
    iget-object v1, p1, Lscenelib/annotations/el/ATypeElement;->description:Ljava/lang/Object;

    iget-object v2, v0, Lscenelib/annotations/el/ATypeElement;->description:Ljava/lang/Object;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    iget-object v1, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 321
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el"    # Lscenelib/annotations/el/ATypeElementWithType;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 327
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ATypeElementWithType;

    .line 328
    .local v0, "t":Lscenelib/annotations/el/ATypeElementWithType;
    invoke-virtual {p1}, Lscenelib/annotations/el/ATypeElementWithType;->getType()Lscenelib/type/Type;

    move-result-object v1

    invoke-virtual {v0}, Lscenelib/annotations/el/ATypeElementWithType;->getType()Lscenelib/type/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lscenelib/annotations/el/AScene;->checkObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/el/AScene$2;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method
