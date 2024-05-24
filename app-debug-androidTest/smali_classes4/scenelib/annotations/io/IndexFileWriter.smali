.class public final Lscenelib/annotations/io/IndexFileWriter;
.super Ljava/lang/Object;
.source "IndexFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;
    }
.end annotation


# static fields
.field private static final INDENT:Ljava/lang/String; = "    "


# instance fields
.field final pw:Ljava/io/PrintWriter;

.field final scene:Lscenelib/annotations/el/AScene;


# direct methods
.method private constructor <init>(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V
    .locals 1
    .param p1, "scene"    # Lscenelib/annotations/el/AScene;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lscenelib/annotations/io/IndexFileWriter;->scene:Lscenelib/annotations/el/AScene;

    .line 525
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    .line 526
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileWriter;->write()V

    .line 527
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 528
    return-void
.end method

.method static synthetic access$000(Lscenelib/annotations/io/IndexFileWriter;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lscenelib/annotations/io/IndexFileWriter;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 46
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Ljava/util/Collection;)V

    return-void
.end method

.method private printASTInsertions(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .param p1, "indentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lscenelib/annotations/io/ASTPath;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;",
            "Ljava/util/Map<",
            "Lscenelib/annotations/io/ASTPath;",
            "Lscenelib/annotations/el/ATypeElementWithType;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p2, "insertAnnotations":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    .local p3, "insertTypecasts":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "    "

    const-string v3, ":"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 352
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/io/ASTPath;

    .line 353
    .local v4, "path":Lscenelib/annotations/io/ASTPath;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/ATypeElement;

    .line 354
    .local v5, "el":Lscenelib/annotations/el/ATypeElement;
    iget-object v6, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "insert-annotation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 356
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 357
    invoke-direct {p0, v2, v5, v4}, Lscenelib/annotations/io/IndexFileWriter;->printInnerTypes(Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/io/ASTPath;)V

    .line 358
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v4    # "path":Lscenelib/annotations/io/ASTPath;
    .end local v5    # "el":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 361
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 362
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/io/ASTPath;

    .line 363
    .restart local v4    # "path":Lscenelib/annotations/io/ASTPath;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/ATypeElementWithType;

    .line 364
    .local v5, "el":Lscenelib/annotations/el/ATypeElementWithType;
    iget-object v6, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "insert-typecast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 366
    iget-object v6, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v5}, Lscenelib/annotations/el/ATypeElementWithType;->getType()Lscenelib/type/Type;

    move-result-object v6

    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileWriter;->printType(Lscenelib/type/Type;)V

    .line 368
    iget-object v6, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 369
    invoke-direct {p0, v2, v5, v4}, Lscenelib/annotations/io/IndexFileWriter;->printInnerTypes(Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/io/ASTPath;)V

    .line 370
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    .end local v4    # "path":Lscenelib/annotations/io/ASTPath;
    .end local v5    # "el":Lscenelib/annotations/el/ATypeElementWithType;
    goto :goto_1

    .line 371
    :cond_1
    return-void
.end method

.method private printAmbElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V
    .locals 10
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "e"    # Lscenelib/annotations/el/AElement;

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lscenelib/annotations/io/IndexFileWriter;->printElement(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 250
    iget-object v0, p3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "type"

    iget-object v3, p3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0, v2, v3}, Lscenelib/annotations/io/IndexFileWriter;->printElement(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 255
    iget-object v0, p3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 256
    .local v2, "ite":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/InnerTypeLocation;

    .line 257
    .local v3, "loc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AElement;

    .line 258
    .local v4, "it":Lscenelib/annotations/el/AElement;
    iget-object v5, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "inner-type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    const/4 v5, 0x1

    .line 260
    .local v5, "first":Z
    iget-object v6, v3, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 261
    .local v7, "l":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    if-eqz v5, :cond_1

    .line 262
    iget-object v8, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_2

    .line 264
    :cond_1
    iget-object v8, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 266
    :goto_2
    iget-object v8, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileWriter;->typePathEntryToString(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    const/4 v5, 0x0

    .line 268
    .end local v7    # "l":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    goto :goto_1

    .line 269
    :cond_2
    iget-object v6, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 270
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 271
    iget-object v6, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 272
    .end local v2    # "ite":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v3    # "loc":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v4    # "it":Lscenelib/annotations/el/AElement;
    .end local v5    # "first":Z
    goto :goto_0

    .line 273
    :cond_3
    return-void
.end method

.method private printAnnotation(Lscenelib/annotations/Annotation;)V
    .locals 6
    .param p1, "a"    # Lscenelib/annotations/Annotation;

    .line 132
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v2

    iget-object v2, v2, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    iget-object v0, p1, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 135
    const/4 v0, 0x1

    .line 137
    .local v0, "first":Z
    iget-object v1, p1, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .local v2, "f":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 139
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 141
    :cond_0
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v3

    iget-object v3, v3, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/field/AnnotationFieldType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lscenelib/annotations/io/IndexFileWriter;->printValue(Lscenelib/annotations/field/AnnotationFieldType;Ljava/lang/Object;)V

    .line 143
    const/4 v0, 0x0

    .line 144
    .end local v2    # "f":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 147
    .end local v0    # "first":Z
    :cond_2
    return-void
.end method

.method private printAnnotations(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lscenelib/annotations/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "annos":Ljava/util/Collection;, "Ljava/util/Collection<+Lscenelib/annotations/Annotation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 151
    .local v1, "tla":Lscenelib/annotations/Annotation;
    iget-object v2, v1, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v2, v2, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 153
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotation(Lscenelib/annotations/Annotation;)V

    .line 155
    .end local v1    # "tla":Lscenelib/annotations/Annotation;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method private printAnnotations(Lscenelib/annotations/el/AElement;)V
    .locals 1
    .param p1, "e"    # Lscenelib/annotations/el/AElement;

    .line 159
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Ljava/util/Collection;)V

    .line 160
    return-void
.end method

.method private printBounds(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "indentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lscenelib/annotations/el/BoundLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p2, "bounds":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 317
    .local v1, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/BoundLocation;

    .line 318
    .local v2, "bl":Lscenelib/annotations/el/BoundLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 319
    .local v3, "b":Lscenelib/annotations/el/ATypeElement;
    iget v4, v2, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "typeparam "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v3}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    goto :goto_1

    .line 323
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " &"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v3}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 326
    .end local v1    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "bl":Lscenelib/annotations/el/BoundLocation;
    .end local v3    # "b":Lscenelib/annotations/el/ATypeElement;
    :goto_1
    goto :goto_0

    .line 327
    :cond_1
    return-void
.end method

.method private printElement(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V
    .locals 3
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "e"    # Lscenelib/annotations/el/AElement;

    .line 165
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p3}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 167
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 168
    return-void
.end method

.method private printElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V
    .locals 2
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "e"    # Lscenelib/annotations/el/AElement;

    .line 172
    iget-object v0, p3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, p1, p2, v0}, Lscenelib/annotations/io/IndexFileWriter;->printElement(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 174
    iget-object v0, p3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileWriter;->printInnerTypes(Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 178
    :cond_0
    return-void
.end method

.method private printExtImpls(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "indentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lscenelib/annotations/el/TypeIndexLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p2, "extImpls":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 334
    .local v1, "ei":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/TypeIndexLocation;

    .line 335
    .local v2, "idx":Lscenelib/annotations/el/TypeIndexLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 337
    .local v3, "ty":Lscenelib/annotations/el/ATypeElement;
    iget v4, v2, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v4, v2, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    const v5, 0xffff

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "implements "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v3}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    goto :goto_2

    .line 338
    :cond_1
    :goto_1
    const-string v4, "extends"

    invoke-direct {p0, p1, v4, v3}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 342
    .end local v1    # "ei":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/TypeIndexLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "idx":Lscenelib/annotations/el/TypeIndexLocation;
    .end local v3    # "ty":Lscenelib/annotations/el/ATypeElement;
    :goto_2
    goto :goto_0

    .line 343
    :cond_2
    return-void
.end method

.method private printInnerTypes(Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V
    .locals 9
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "e"    # Lscenelib/annotations/el/ATypeElement;

    .line 192
    iget-object v0, p2, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 193
    .local v1, "ite":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/InnerTypeLocation;

    .line 194
    .local v2, "loc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AElement;

    .line 195
    .local v3, "it":Lscenelib/annotations/el/AElement;
    iget-object v4, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "inner-type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    const/16 v4, 0x20

    .line 197
    .local v4, "sep":C
    iget-object v5, v2, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 198
    .local v6, "l":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    iget-object v7, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 199
    iget-object v7, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileWriter;->typePathEntryToString(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    const/16 v4, 0x2c

    .line 201
    .end local v6    # "l":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    goto :goto_1

    .line 202
    :cond_0
    iget-object v5, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 203
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 204
    iget-object v5, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 205
    .end local v1    # "ite":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v3    # "it":Lscenelib/annotations/el/AElement;
    .end local v4    # "sep":C
    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method private printInnerTypes(Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;Lscenelib/annotations/io/ASTPath;)V
    .locals 9
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "e"    # Lscenelib/annotations/el/ATypeElement;
    .param p3, "path"    # Lscenelib/annotations/io/ASTPath;

    .line 211
    iget-object v0, p2, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    .local v1, "ite":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/InnerTypeLocation;

    .line 213
    .local v2, "loc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AElement;

    .line 214
    .local v3, "it":Lscenelib/annotations/el/AElement;
    iget-object v4, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "inner-type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    const/16 v4, 0x20

    .line 216
    .local v4, "sep":C
    iget-object v5, v2, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 217
    .local v6, "l":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    iget-object v7, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 218
    iget-object v7, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileWriter;->typePathEntryToString(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    const/16 v4, 0x2c

    .line 220
    .end local v6    # "l":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    goto :goto_1

    .line 221
    :cond_0
    iget-object v5, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 222
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 223
    iget-object v5, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 224
    .end local v1    # "ite":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "loc":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v3    # "it":Lscenelib/annotations/el/AElement;
    .end local v4    # "sep":C
    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method private printNumberedAmbigiousElements(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lscenelib/annotations/el/AElement;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p3, "nels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;+Lscenelib/annotations/el/AElement;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 240
    .local v1, "te":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;+Lscenelib/annotations/el/AElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    .line 241
    .local v2, "t":Lscenelib/annotations/el/AElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-direct {p0, p1, v3, v2}, Lscenelib/annotations/io/IndexFileWriter;->printAmbElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 243
    .end local v1    # "te":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;+Lscenelib/annotations/el/AElement;>;"
    .end local v2    # "t":Lscenelib/annotations/el/AElement;
    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method private printRelativeElements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "desc1"    # Ljava/lang/String;
    .param p3, "desc2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lscenelib/annotations/el/RelativeLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p4, "nels":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    const/4 v0, 0x0

    .line 291
    .local v0, "prev":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 292
    .local v2, "te":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 293
    .local v3, "t":Lscenelib/annotations/el/ATypeElement;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/RelativeLocation;

    .line 294
    .local v4, "loc":Lscenelib/annotations/el/RelativeLocation;
    iget v5, v4, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 295
    .local v5, "isOffset":Z
    :goto_1
    const-string v6, "    "

    const-string v7, " "

    if-eqz v0, :cond_2

    iget v8, v4, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    if-ltz v8, :cond_2

    if-eqz v5, :cond_1

    iget v8, v4, Lscenelib/annotations/el/RelativeLocation;->offset:I

    iget v9, v0, Lscenelib/annotations/el/RelativeLocation;->offset:I

    if-eq v8, v9, :cond_5

    goto :goto_2

    :cond_1
    iget v8, v4, Lscenelib/annotations/el/RelativeLocation;->index:I

    iget v9, v0, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-eq v8, v9, :cond_5

    .line 298
    :cond_2
    :goto_2
    iget-object v8, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    iget-object v8, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lscenelib/annotations/el/RelativeLocation;->offset:I

    goto :goto_3

    :cond_3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lscenelib/annotations/el/RelativeLocation;->index:I

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    iget-object v8, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget v8, v4, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    if-gtz v8, :cond_4

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 302
    :cond_4
    iget-object v8, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lscenelib/annotations/io/IndexFileWriter;->printInnerTypes(Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 305
    :cond_5
    iget v8, v4, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    if-lez v8, :cond_6

    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 309
    :cond_6
    move-object v0, v4

    .line 310
    .end local v2    # "te":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v3    # "t":Lscenelib/annotations/el/ATypeElement;
    .end local v4    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v5    # "isOffset":Z
    goto/16 :goto_0

    .line 311
    :cond_7
    return-void
.end method

.method private printRelativeElements(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lscenelib/annotations/el/RelativeLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p3, "nels":Ljava/util/Map;, "Ljava/util/Map<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 280
    .local v1, "te":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/ATypeElement;

    .line 281
    .local v2, "t":Lscenelib/annotations/el/ATypeElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v4}, Lscenelib/annotations/el/RelativeLocation;->getLocationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-direct {p0, p1, v3, v2}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 283
    .end local v1    # "te":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "t":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method private printType(Lscenelib/type/Type;)V
    .locals 5
    .param p1, "type"    # Lscenelib/type/Type;

    .line 374
    sget-object v0, Lscenelib/annotations/io/IndexFileWriter$1;->$SwitchMap$scenelib$type$Type$Kind:[I

    invoke-virtual {p1}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 389
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lscenelib/type/DeclaredType;

    .line 390
    .local v0, "d":Lscenelib/type/DeclaredType;
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->isWildcard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v1

    .line 393
    .local v1, "inner":Lscenelib/type/DeclaredType;
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 397
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/type/Type;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/type/Type;

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileWriter;->printType(Lscenelib/type/Type;)V

    .line 400
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/type/Type;

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileWriter;->printType(Lscenelib/type/Type;)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    :cond_1
    if-eqz v1, :cond_2

    .line 407
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileWriter;->printType(Lscenelib/type/Type;)V

    goto :goto_1

    .line 381
    .end local v0    # "d":Lscenelib/type/DeclaredType;
    .end local v1    # "inner":Lscenelib/type/DeclaredType;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/type/Type;>;"
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lscenelib/type/BoundedType;

    .line 382
    .local v0, "b":Lscenelib/type/BoundedType;
    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getName()Lscenelib/type/DeclaredType;

    move-result-object v1

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileWriter;->printType(Lscenelib/type/Type;)V

    .line 383
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getBoundKind()Lscenelib/type/BoundedType$BoundKind;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 385
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileWriter;->printType(Lscenelib/type/Type;)V

    .line 387
    goto :goto_1

    .line 376
    .end local v0    # "b":Lscenelib/type/BoundedType;
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lscenelib/type/ArrayType;

    .line 377
    .local v0, "a":Lscenelib/type/ArrayType;
    invoke-virtual {v0}, Lscenelib/type/ArrayType;->getComponentType()Lscenelib/type/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileWriter;->printType(Lscenelib/type/Type;)V

    .line 378
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    nop

    .line 413
    .end local v0    # "a":Lscenelib/type/ArrayType;
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V
    .locals 2
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "e"    # Lscenelib/annotations/el/ATypeElement;

    .line 183
    iget-object v0, p3, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lscenelib/annotations/io/IndexFileWriter;->printElement(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lscenelib/annotations/io/IndexFileWriter;->printInnerTypes(Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 188
    return-void
.end method

.method private printValue(Lscenelib/annotations/field/AnnotationFieldType;Ljava/lang/Object;)V
    .locals 7
    .param p1, "aft"    # Lscenelib/annotations/field/AnnotationFieldType;
    .param p2, "o"    # Ljava/lang/Object;

    .line 94
    instance-of v0, p1, Lscenelib/annotations/field/AnnotationAFT;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/Annotation;

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotation(Lscenelib/annotations/Annotation;)V

    goto/16 :goto_2

    .line 96
    :cond_0
    instance-of v0, p1, Lscenelib/annotations/field/ArrayAFT;

    if-eqz v0, :cond_6

    .line 97
    move-object v0, p1

    check-cast v0, Lscenelib/annotations/field/ArrayAFT;

    .line 98
    .local v0, "aaft":Lscenelib/annotations/field/ArrayAFT;
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 99
    instance-of v1, p2, Ljava/util/List;

    if-nez v1, :cond_1

    .line 100
    iget-object v1, v0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    invoke-direct {p0, v1, p2}, Lscenelib/annotations/io/IndexFileWriter;->printValue(Lscenelib/annotations/field/AnnotationFieldType;Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    .line 106
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v2, v0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    if-nez v2, :cond_3

    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 111
    :cond_3
    const/4 v2, 0x1

    .line 112
    .local v2, "first":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, "o2":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 114
    iget-object v5, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 116
    :cond_4
    iget-object v5, v0, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    invoke-direct {p0, v5, v4}, Lscenelib/annotations/io/IndexFileWriter;->printValue(Lscenelib/annotations/field/AnnotationFieldType;Ljava/lang/Object;)V

    .line 117
    const/4 v2, 0x0

    .line 118
    .end local v4    # "o2":Ljava/lang/Object;
    goto :goto_0

    .line 121
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "first":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 122
    .end local v0    # "aaft":Lscenelib/annotations/field/ArrayAFT;
    goto :goto_2

    :cond_6
    instance-of v0, p1, Lscenelib/annotations/field/ClassTokenAFT;

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p1, p2}, Lscenelib/annotations/field/AnnotationFieldType;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :cond_7
    instance-of v0, p1, Lscenelib/annotations/field/BasicAFT;

    if-eqz v0, :cond_8

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 125
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lscenelib/annotations/util/Strings;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_8
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    :goto_2
    return-void
.end method

.method private typePathEntryToString(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)Ljava/lang/String;
    .locals 2
    .param p1, "t"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    iget v1, v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private write()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 417
    move-object/from16 v0, p0

    new-instance v1, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;

    invoke-direct {v1, v0}, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;-><init>(Lscenelib/annotations/io/IndexFileWriter;)V

    .line 418
    .local v1, "odc":Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;
    invoke-virtual {v1}, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;->visit()V

    .line 422
    iget-object v2, v0, Lscenelib/annotations/io/IndexFileWriter;->scene:Lscenelib/annotations/el/AScene;

    iget-object v2, v2, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "package "

    const-string v5, ":"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 423
    .local v3, "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/AElement;

    .line 424
    .local v6, "elem":Lscenelib/annotations/el/AElement;
    if-eqz v6, :cond_0

    iget-object v7, v6, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 425
    iget-object v7, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    invoke-direct {v0, v6}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 427
    iget-object v4, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 429
    .end local v3    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AElement;>;"
    .end local v6    # "elem":Lscenelib/annotations/el/AElement;
    :cond_0
    goto :goto_0

    .line 432
    :cond_1
    const-string v2, "        "

    .line 433
    .local v2, "indent2":Ljava/lang/String;
    const-string v3, "            "

    .line 435
    .local v3, "indent3":Ljava/lang/String;
    iget-object v6, v0, Lscenelib/annotations/io/IndexFileWriter;->scene:Lscenelib/annotations/el/AScene;

    iget-object v6, v6, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v6}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 436
    .local v7, "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 437
    .local v8, "cname":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/el/AClass;

    .line 438
    .local v9, "c":Lscenelib/annotations/el/AClass;
    invoke-static {v8}, Lscenelib/annotations/io/IOUtils;->packagePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 439
    .local v10, "pkg":Ljava/lang/String;
    invoke-static {v8}, Lscenelib/annotations/io/IOUtils;->basenamePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 440
    .local v11, "basename":Ljava/lang/String;
    const-string v12, "package-info"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 441
    iget-object v12, v9, Lscenelib/annotations/el/AClass;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 442
    iget-object v12, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    invoke-direct {v0, v9}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 444
    iget-object v12, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 448
    :cond_3
    iget-object v12, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    iget-object v12, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    invoke-direct {v0, v9}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 451
    iget-object v12, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    .line 454
    iget-object v12, v9, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    const-string v13, "    "

    invoke-direct {v0, v13, v12}, Lscenelib/annotations/io/IndexFileWriter;->printBounds(Ljava/lang/String;Ljava/util/Map;)V

    .line 455
    iget-object v12, v9, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {v0, v13, v12}, Lscenelib/annotations/io/IndexFileWriter;->printExtImpls(Ljava/lang/String;Ljava/util/Map;)V

    .line 456
    iget-object v12, v9, Lscenelib/annotations/el/AClass;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v14, v9, Lscenelib/annotations/el/AClass;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {v0, v13, v12, v14}, Lscenelib/annotations/io/IndexFileWriter;->printASTInsertions(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 459
    iget-object v12, v9, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v12}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "type"

    move-object/from16 v16, v1

    .end local v1    # "odc":Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;
    .local v16, "odc":Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;
    const-string v1, "        "

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 460
    .local v14, "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    .end local v2    # "indent2":Ljava/lang/String;
    .local v18, "indent2":Ljava/lang/String;
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .line 461
    .local v2, "fname":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v3

    .end local v3    # "indent3":Ljava/lang/String;
    .local v19, "indent3":Ljava/lang/String;
    move-object/from16 v3, v17

    check-cast v3, Lscenelib/annotations/el/AField;

    .line 462
    .local v3, "f":Lscenelib/annotations/el/AField;
    move-object/from16 v17, v4

    iget-object v4, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string v5, "field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v13, v4, v3}, Lscenelib/annotations/io/IndexFileWriter;->printElement(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 464
    iget-object v4, v3, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, v1, v15, v4}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 465
    iget-object v4, v3, Lscenelib/annotations/el/AField;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v5, v3, Lscenelib/annotations/el/AField;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {v0, v1, v4, v5}, Lscenelib/annotations/io/IndexFileWriter;->printASTInsertions(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 467
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "f":Lscenelib/annotations/el/AField;
    .end local v14    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AField;>;"
    move-object/from16 v1, v16

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    goto :goto_2

    .line 469
    .end local v18    # "indent2":Ljava/lang/String;
    .end local v19    # "indent3":Ljava/lang/String;
    .local v2, "indent2":Ljava/lang/String;
    .local v3, "indent3":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    .end local v2    # "indent2":Ljava/lang/String;
    .end local v3    # "indent3":Ljava/lang/String;
    .restart local v18    # "indent2":Ljava/lang/String;
    .restart local v19    # "indent3":Ljava/lang/String;
    iget-object v2, v9, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 470
    .local v3, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AMethod;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 471
    .local v4, "mkey":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/AMethod;

    .line 472
    .local v5, "m":Lscenelib/annotations/el/AMethod;
    iget-object v12, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    .line 473
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "method "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v13, v12, v5}, Lscenelib/annotations/io/IndexFileWriter;->printElement(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 474
    iget-object v12, v5, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {v0, v1, v12}, Lscenelib/annotations/io/IndexFileWriter;->printBounds(Ljava/lang/String;Ljava/util/Map;)V

    .line 475
    iget-object v12, v5, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    const-string v14, "return"

    invoke-direct {v0, v1, v14, v12}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 476
    iget-object v12, v5, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v12, v12, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v12, v12, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v5, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v12, v12, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v12, v12, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 477
    invoke-virtual {v12}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v21, v2

    goto :goto_5

    .line 481
    :cond_6
    :goto_4
    const-string v12, "receiver"

    move-object/from16 v21, v2

    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-direct {v0, v1, v12, v2}, Lscenelib/annotations/io/IndexFileWriter;->printElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 483
    :goto_5
    const-string v2, "parameter"

    iget-object v12, v5, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {v0, v1, v2, v12}, Lscenelib/annotations/io/IndexFileWriter;->printNumberedAmbigiousElements(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 486
    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v2, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    move-object/from16 v22, v3

    .end local v3    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AMethod;>;"
    .local v22, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AMethod;>;"
    const-string v3, "            "

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 487
    .local v12, "le":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/LocalLocation;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v2, v23

    check-cast v2, Lscenelib/annotations/el/LocalLocation;

    .line 488
    .local v2, "loc":Lscenelib/annotations/el/LocalLocation;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v25, v4

    .end local v4    # "mkey":Ljava/lang/String;
    .local v25, "mkey":Ljava/lang/String;
    move-object/from16 v4, v23

    check-cast v4, Lscenelib/annotations/el/AElement;

    .line 489
    .local v4, "l":Lscenelib/annotations/el/AElement;
    move-object/from16 v23, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v26, v7

    .end local v7    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .local v26, "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    const-string v7, "local "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v7, v2, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    if-nez v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v8

    .end local v8    # "cname":Ljava/lang/String;
    .local v27, "cname":Ljava/lang/String;
    iget v8, v2, Lscenelib/annotations/el/LocalLocation;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lscenelib/annotations/el/LocalLocation;->scopeLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .end local v27    # "cname":Ljava/lang/String;
    .restart local v8    # "cname":Ljava/lang/String;
    :cond_7
    move-object/from16 v27, v8

    .end local v8    # "cname":Ljava/lang/String;
    .restart local v27    # "cname":Ljava/lang/String;
    iget-object v7, v2, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v7, v4}, Lscenelib/annotations/io/IndexFileWriter;->printElement(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AElement;)V

    .line 495
    iget-object v7, v4, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, v3, v15, v7}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 497
    .end local v2    # "loc":Lscenelib/annotations/el/LocalLocation;
    .end local v4    # "l":Lscenelib/annotations/el/AElement;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "le":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/LocalLocation;Lscenelib/annotations/el/AField;>;"
    move-object/from16 v3, v22

    move-object/from16 v6, v23

    move-object/from16 v2, v24

    move-object/from16 v4, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    goto :goto_6

    .line 498
    .end local v25    # "mkey":Ljava/lang/String;
    .end local v26    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .end local v27    # "cname":Ljava/lang/String;
    .local v4, "mkey":Ljava/lang/String;
    .restart local v7    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .restart local v8    # "cname":Ljava/lang/String;
    :cond_8
    move-object/from16 v25, v4

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .end local v4    # "mkey":Ljava/lang/String;
    .end local v7    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .end local v8    # "cname":Ljava/lang/String;
    .restart local v25    # "mkey":Ljava/lang/String;
    .restart local v26    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .restart local v27    # "cname":Ljava/lang/String;
    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v2, Lscenelib/annotations/el/ABlock;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    const-string v4, "typecast"

    invoke-direct {v0, v1, v4, v2}, Lscenelib/annotations/io/IndexFileWriter;->printRelativeElements(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 500
    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v2, Lscenelib/annotations/el/ABlock;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    const-string v4, "instanceof"

    invoke-direct {v0, v1, v4, v2}, Lscenelib/annotations/io/IndexFileWriter;->printRelativeElements(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 502
    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v2, Lscenelib/annotations/el/ABlock;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    const-string v4, "new"

    invoke-direct {v0, v1, v4, v2}, Lscenelib/annotations/io/IndexFileWriter;->printRelativeElements(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 503
    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v2, Lscenelib/annotations/el/ABlock;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    const-string v4, "reference"

    const-string v6, "typearg"

    invoke-direct {v0, v1, v4, v6, v2}, Lscenelib/annotations/io/IndexFileWriter;->printRelativeElements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 504
    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v2, Lscenelib/annotations/el/ABlock;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    const-string v4, "call"

    invoke-direct {v0, v1, v4, v6, v2}, Lscenelib/annotations/io/IndexFileWriter;->printRelativeElements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 506
    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v2, v2, Lscenelib/annotations/el/ABlock;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 507
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/AMethod;

    .line 508
    .local v6, "lambda":Lscenelib/annotations/el/AMethod;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/RelativeLocation;

    .line 509
    .local v7, "loc":Lscenelib/annotations/el/RelativeLocation;
    iget-object v8, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    const-string v2, "lambda "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lscenelib/annotations/el/RelativeLocation;->getLocationString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ":\n"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    iget-object v2, v6, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {v0, v3, v2}, Lscenelib/annotations/io/IndexFileWriter;->printBounds(Ljava/lang/String;Ljava/util/Map;)V

    .line 511
    iget-object v2, v6, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, v3, v14, v2}, Lscenelib/annotations/io/IndexFileWriter;->printTypeElementAndInnerTypes(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/ATypeElement;)V

    .line 513
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    .end local v6    # "lambda":Lscenelib/annotations/el/AMethod;
    .end local v7    # "loc":Lscenelib/annotations/el/RelativeLocation;
    move-object/from16 v2, v24

    goto :goto_8

    .line 515
    :cond_9
    iget-object v2, v5, Lscenelib/annotations/el/AMethod;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v5, Lscenelib/annotations/el/AMethod;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {v0, v1, v2, v3}, Lscenelib/annotations/io/IndexFileWriter;->printASTInsertions(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 517
    .end local v5    # "m":Lscenelib/annotations/el/AMethod;
    .end local v22    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AMethod;>;"
    .end local v25    # "mkey":Ljava/lang/String;
    move-object/from16 v2, v21

    move-object/from16 v6, v23

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    goto/16 :goto_3

    .line 518
    .end local v26    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .end local v27    # "cname":Ljava/lang/String;
    .local v7, "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .restart local v8    # "cname":Ljava/lang/String;
    :cond_a
    move-object/from16 v23, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .end local v7    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .end local v8    # "cname":Ljava/lang/String;
    .restart local v26    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .restart local v27    # "cname":Ljava/lang/String;
    iget-object v1, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 519
    .end local v9    # "c":Lscenelib/annotations/el/AClass;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "basename":Ljava/lang/String;
    .end local v26    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .end local v27    # "cname":Ljava/lang/String;
    move-object/from16 v1, v16

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    goto/16 :goto_1

    .line 520
    .end local v16    # "odc":Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;
    .end local v18    # "indent2":Ljava/lang/String;
    .end local v19    # "indent3":Ljava/lang/String;
    .restart local v1    # "odc":Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;
    .local v2, "indent2":Ljava/lang/String;
    .local v3, "indent3":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public static write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V
    .locals 1
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 559
    new-instance v0, Lscenelib/annotations/io/IndexFileWriter;

    invoke-direct {v0, p0, p1}, Lscenelib/annotations/io/IndexFileWriter;-><init>(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V

    .line 560
    return-void
.end method

.method public static write(Lscenelib/annotations/el/AScene;Ljava/lang/String;)V
    .locals 1
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V

    .line 571
    return-void
.end method


# virtual methods
.method printAnnotationDefBody(Lscenelib/annotations/el/AnnotationDef;)V
    .locals 7
    .param p1, "d"    # Lscenelib/annotations/el/AnnotationDef;

    .line 52
    iget-object v0, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 53
    .local v1, "f":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "fieldname":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/field/AnnotationFieldType;

    .line 55
    .local v3, "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    iget-object v4, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .end local v1    # "f":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    .end local v2    # "fieldname":Ljava/lang/String;
    .end local v3    # "fieldType":Lscenelib/annotations/field/AnnotationFieldType;
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 58
    return-void
.end method
