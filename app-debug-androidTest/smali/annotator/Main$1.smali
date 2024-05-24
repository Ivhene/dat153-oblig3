.class final Lannotator/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lscenelib/annotations/el/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/Main;
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

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Lscenelib/annotations/el/AElement;",
            ">(",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 201
    .local p1, "vm0":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    .local p2, "vm1":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    invoke-virtual {p1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lscenelib/annotations/el/AElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "def"    # Lscenelib/annotations/el/AnnotationDef;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitBlock(Lscenelib/annotations/el/ABlock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitBlock(Lscenelib/annotations/el/ABlock;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lscenelib/annotations/el/ABlock;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el0"    # Lscenelib/annotations/el/ABlock;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 215
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ABlock;

    .line 216
    .local v0, "el1":Lscenelib/annotations/el/ABlock;
    iget-object v1, p1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 217
    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitExpression(Lscenelib/annotations/el/AExpression;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitClass(Lscenelib/annotations/el/AClass;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitClass(Lscenelib/annotations/el/AClass;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lscenelib/annotations/el/AClass;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el0"    # Lscenelib/annotations/el/AClass;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 222
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/AClass;

    .line 223
    .local v0, "el1":Lscenelib/annotations/el/AClass;
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 224
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 225
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 226
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 227
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 228
    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 9
    .param p1, "el0"    # Lscenelib/annotations/el/ADeclaration;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 233
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ADeclaration;

    .line 234
    .local v0, "el1":Lscenelib/annotations/el/ADeclaration;
    iget-object v1, v0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 236
    .local v1, "insertAnnotations":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    iget-object v2, v0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 239
    .local v2, "insertTypecasts":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    iget-object v3, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 240
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/io/ASTPath;

    .line 241
    .local v5, "p":Lscenelib/annotations/io/ASTPath;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/ATypeElement;

    .line 242
    .local v6, "e":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1, v5, v6}, Lscenelib/annotations/util/coll/VivifyingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v5    # "p":Lscenelib/annotations/io/ASTPath;
    .end local v6    # "e":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 246
    :cond_0
    iget-object v3, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 247
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/io/ASTPath;

    .line 248
    .restart local v5    # "p":Lscenelib/annotations/io/ASTPath;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/ATypeElementWithType;

    .line 249
    .local v6, "e":Lscenelib/annotations/el/ATypeElementWithType;
    invoke-virtual {v6}, Lscenelib/annotations/el/ATypeElementWithType;->getType()Lscenelib/type/Type;

    move-result-object v7

    .line 250
    .local v7, "type":Lscenelib/type/Type;
    instance-of v8, v7, Lscenelib/type/DeclaredType;

    if-eqz v8, :cond_1

    move-object v8, v7

    check-cast v8, Lscenelib/type/DeclaredType;

    .line 251
    invoke-virtual {v8}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 252
    invoke-virtual {v1, v5, v6}, Lscenelib/annotations/util/coll/VivifyingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 255
    :cond_1
    invoke-virtual {v2, v5, v6}, Lscenelib/annotations/util/coll/VivifyingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    .end local v5    # "p":Lscenelib/annotations/io/ASTPath;
    .end local v6    # "e":Lscenelib/annotations/el/ATypeElementWithType;
    .end local v7    # "type":Lscenelib/type/Type;
    :goto_2
    goto :goto_1

    .line 259
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitElement(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitElement(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "el"    # Lscenelib/annotations/el/AElement;
    .param p2, "arg"    # Lscenelib/annotations/el/AElement;

    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitExpression(Lscenelib/annotations/el/AExpression;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExpression(Lscenelib/annotations/el/AExpression;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el0"    # Lscenelib/annotations/el/AExpression;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 264
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/AExpression;

    .line 265
    .local v0, "el1":Lscenelib/annotations/el/AExpression;
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 266
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 267
    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 268
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitField(Lscenelib/annotations/el/AField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitField(Lscenelib/annotations/el/AField;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitField(Lscenelib/annotations/el/AField;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "el0"    # Lscenelib/annotations/el/AField;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 273
    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lscenelib/annotations/el/AMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitMethod(Lscenelib/annotations/el/AMethod;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lscenelib/annotations/el/AMethod;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el0"    # Lscenelib/annotations/el/AMethod;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 278
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/AMethod;

    .line 279
    .local v0, "el1":Lscenelib/annotations/el/AMethod;
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 280
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 281
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 282
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v1, p0, v2}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-virtual {v1, p0, v2}, Lscenelib/annotations/el/AField;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-virtual {v1, p0, v2}, Lscenelib/annotations/el/ABlock;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 3
    .param p1, "el0"    # Lscenelib/annotations/el/ATypeElement;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 290
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    .line 291
    .local v0, "el1":Lscenelib/annotations/el/ATypeElement;
    iget-object v1, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p0, v1, v2}, Lannotator/Main$1;->filter(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)Ljava/lang/Void;

    .line 292
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 2
    .param p1, "el0"    # Lscenelib/annotations/el/ATypeElementWithType;
    .param p2, "el"    # Lscenelib/annotations/el/AElement;

    .line 298
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ATypeElementWithType;

    .line 299
    .local v0, "el1":Lscenelib/annotations/el/ATypeElementWithType;
    invoke-virtual {p1}, Lscenelib/annotations/el/ATypeElementWithType;->getType()Lscenelib/type/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/el/ATypeElementWithType;->setType(Lscenelib/type/Type;)V

    .line 300
    invoke-virtual {p0, p1, p2}, Lannotator/Main$1;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method
