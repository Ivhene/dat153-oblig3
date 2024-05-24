.class public final Lscenelib/annotations/io/IndexFileParser;
.super Ljava/lang/Object;
.source "IndexFileParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static abbreviate:Z

.field private static final knownKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final primitiveTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final typeSelectors:[Ljava/lang/String;


# instance fields
.field private curPkgPrefix:Ljava/lang/String;

.field private final defs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation
.end field

.field private final scene:Lscenelib/annotations/el/AScene;

.field private final source:Ljava/lang/String;

.field private final st:Ljava/io/StreamTokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 81
    nop

    .line 83
    const-string v0, "bound"

    const-string v1, "identifier"

    const-string v2, "type"

    const-string v3, "typeAlternative"

    const-string v4, "typeArgument"

    const-string v5, "typeParameter"

    const-string v6, "underlyingType"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/IndexFileParser;->typeSelectors:[Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lscenelib/annotations/io/IndexFileParser;->abbreviate:Z

    .line 182
    const-string v1, "abstract"

    const-string v2, "assert"

    const-string v3, "boolean"

    const-string v4, "break"

    const-string v5, "byte"

    const-string v6, "case"

    const-string v7, "catch"

    const-string v8, "char"

    const-string v9, "class"

    const-string v10, "const"

    const-string v11, "continue"

    const-string v12, "default"

    const-string v13, "do"

    const-string v14, "double"

    const-string v15, "else"

    const-string v16, "enum"

    const-string v17, "extends"

    const-string v18, "false"

    const-string v19, "final"

    const-string v20, "finally"

    const-string v21, "float"

    const-string v22, "for"

    const-string v23, "if"

    const-string v24, "goto"

    const-string v25, "implements"

    const-string v26, "import"

    const-string v27, "instanceof"

    const-string v28, "int"

    const-string v29, "interface"

    const-string v30, "long"

    const-string v31, "native"

    const-string v32, "new"

    const-string v33, "null"

    const-string v34, "package"

    const-string v35, "private"

    const-string v36, "protected"

    const-string v37, "public"

    const-string v38, "return"

    const-string v39, "short"

    const-string v40, "static"

    const-string v41, "strictfp"

    const-string v42, "super"

    const-string v43, "switch"

    const-string v44, "synchronized"

    const-string v45, "this"

    const-string v46, "throw"

    const-string v47, "throws"

    const-string v48, "transient"

    const-string v49, "true"

    const-string v50, "try"

    const-string v51, "void"

    const-string v52, "volatile"

    const-string v53, "while"

    filled-new-array/range {v1 .. v53}, [Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "knownKeywords_array":[Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Lscenelib/annotations/io/IndexFileParser;->knownKeywords:Ljava/util/Set;

    .line 194
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 295
    .end local v0    # "knownKeywords_array":[Ljava/lang/String;
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 296
    .local v0, "pt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sput-object v0, Lscenelib/annotations/io/IndexFileParser;->primitiveTypes:Ljava/util/Map;

    .line 306
    .end local v0    # "pt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    return-void
.end method

.method private constructor <init>(Ljava/io/Reader;Ljava/lang/String;Lscenelib/annotations/el/AScene;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "scene"    # Lscenelib/annotations/el/AScene;

    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1621
    iput-object p2, p0, Lscenelib/annotations/io/IndexFileParser;->source:Ljava/lang/String;

    .line 1622
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    .line 1623
    sget-object v0, Lscenelib/annotations/Annotations;->standardDefs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AnnotationDef;

    .line 1625
    .local v1, "ad":Lscenelib/annotations/el/AnnotationDef;
    :try_start_0
    invoke-virtual {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->addDef(Lscenelib/annotations/el/AnnotationDef;)V
    :try_end_0
    .catch Lscenelib/annotations/io/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    nop

    .line 1629
    .end local v1    # "ad":Lscenelib/annotations/el/AnnotationDef;
    goto :goto_0

    .line 1626
    .restart local v1    # "ad":Lscenelib/annotations/el/AnnotationDef;
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "e":Lscenelib/annotations/io/ParseException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1631
    .end local v0    # "e":Lscenelib/annotations/io/ParseException;
    .end local v1    # "ad":Lscenelib/annotations/el/AnnotationDef;
    :cond_0
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    .line 1632
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    .line 1639
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 1642
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 1645
    const/16 v1, 0x2d

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 1648
    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 1649
    const/16 v1, 0x5f

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 1650
    const/16 v1, 0x24

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 1652
    iput-object p3, p0, Lscenelib/annotations/io/IndexFileParser;->scene:Lscenelib/annotations/el/AScene;

    .line 1656
    return-void
.end method

.method private checkChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 120
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkIdentifier()Ljava/lang/String;
    .locals 4

    .line 210
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    return-object v1

    .line 213
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 214
    .local v0, "val":Ljava/lang/String;
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v2, v2, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v1, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    return-object v1

    .line 217
    :cond_1
    return-object v1
.end method

.method private checkKeyword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkNNInteger()I
    .locals 7

    .line 271
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-wide v0, v0, Ljava/io/StreamTokenizer;->nval:D

    double-to-int v0, v0

    .line 273
    .local v0, "x":I
    int-to-double v3, v0

    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-wide v5, v1, Ljava/io/StreamTokenizer;->nval:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 274
    return v0

    .line 276
    .end local v0    # "x":I
    :cond_0
    return v2
.end method

.method private checkPrimitiveType()Ljava/lang/String;
    .locals 4

    .line 239
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 240
    return-object v1

    .line 242
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 243
    .local v0, "val":Ljava/lang/String;
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v2, v2, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    sget-object v2, Lscenelib/annotations/io/IndexFileParser;->primitiveTypes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v1, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    return-object v1

    .line 246
    :cond_1
    return-object v1
.end method

.method private expectChar(C)V
    .locals 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v0, :sswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v2, v2, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "found":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0    # "found":Ljava/lang/String;
    :sswitch_0
    const-string v0, "end of line"

    .restart local v0    # "found":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v0    # "found":Ljava/lang/String;
    :sswitch_1
    const-string v0, "end of file"

    .restart local v0    # "found":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v0    # "found":Ljava/lang/String;
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-wide v1, v1, Ljava/io/StreamTokenizer;->nval:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "found":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v0    # "found":Ljava/lang/String;
    :sswitch_3
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 168
    .restart local v0    # "found":Ljava/lang/String;
    :goto_0
    new-instance v1, Lscenelib/annotations/io/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "found":Ljava/lang/String;
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private expectClassGetName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "arrays":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v1, "type":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v2, 0x5b

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    :goto_1
    const-string v3, "class"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 325
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v3, v3, Ljava/io/StreamTokenizer;->ttype:I

    if-ltz v3, :cond_1

    .line 326
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v3, v3, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 327
    :cond_1
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v3, v3, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_2

    .line 328
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v3, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :goto_2
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_1

    .line 330
    :cond_2
    new-instance v2, Lscenelib/annotations/io/ParseException;

    const-string v3, "Found something that doesn\'t belong in a signature"

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 340
    :goto_3
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "arrays":I
    .local v3, "arrays":I
    if-lez v0, :cond_4

    .line 341
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_3

    .line 345
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private expectIdentifier()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    return-object v0

    .line 234
    :cond_0
    new-instance v1, Lscenelib/annotations/io/ParseException;

    const-string v2, "Expected an identifier"

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private expectKeyword(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    return-void

    .line 176
    :cond_0
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expectNonNegative(I)I
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 111
    if-ltz p1, :cond_0

    .line 112
    return p1

    .line 114
    :cond_0
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a nonnegative integer, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expectQualifiedName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "name":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_0
    return-object v0
.end method

.method private fixNewArrayType(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTPath;
    .locals 9
    .param p1, "astPath"    # Lscenelib/annotations/io/ASTPath;

    .line 1227
    move-object v0, p1

    .line 1228
    .local v0, "outerPath":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {p1}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1230
    .local v1, "last":I
    if-lez v1, :cond_0

    .line 1231
    invoke-virtual {p1, v1}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 1232
    .local v2, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_0

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1233
    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v4

    .line 1234
    .local v4, "a":I
    invoke-virtual {p1}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    new-instance v6, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v3, v8}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 1235
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    .line 1236
    new-instance v5, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-direct {v5, v6, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    goto :goto_0

    .line 1241
    .end local v2    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v4    # "a":I
    :cond_0
    return-object v0
.end method

.method private static isTypeSelector(Ljava/lang/String;)Z
    .locals 2
    .param p0, "selector"    # Ljava/lang/String;

    .line 1138
    sget-object v0, Lscenelib/annotations/io/IndexFileParser;->typeSelectors:[Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidIdentifier(Ljava/lang/String;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lscenelib/annotations/io/IndexFileParser;->knownKeywords:Ljava/util/Set;

    .line 199
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    return v1

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_3
    :goto_1
    return v1
.end method

.method private matchChar(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 136
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchIdentifier()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->checkIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "x":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 226
    return-object v0

    .line 228
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private matchKeyword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 150
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchNNInteger()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->checkNNInteger()I

    move-result v0

    .line 281
    .local v0, "x":I
    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 283
    return v0

    .line 285
    :cond_0
    return v1
.end method

.method private matchPrimitiveType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->checkPrimitiveType()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "x":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 255
    return-object v0

    .line 257
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;
    .locals 1
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "legalChildSelectors"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1386
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    return-object v0
.end method

.method private newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;
    .locals 4
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "legalChildSelectors"    # [Ljava/lang/String;
    .param p3, "argumentChildSelectors"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1408
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1409
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 1410
    .local v2, "arg":Ljava/lang/String;
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1411
    if-eqz p3, :cond_0

    invoke-static {p3, v2}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1412
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v0

    .line 1413
    .local v0, "index":I
    new-instance v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1

    .line 1415
    .end local v0    # "index":I
    :cond_0
    new-instance v0, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-direct {v0, p1, v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    return-object v0

    .line 1409
    .end local v2    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1419
    :cond_2
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (legal arguments - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/io/LineNumberReader;Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;
    .locals 2
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "scene"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AScene;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1678
    new-instance v0, Lscenelib/annotations/io/IndexFileParser;

    invoke-direct {v0, p0, p1, p2}, Lscenelib/annotations/io/IndexFileParser;-><init>(Ljava/io/Reader;Ljava/lang/String;Lscenelib/annotations/el/AScene;)V

    .line 1680
    .local v0, "parser":Lscenelib/annotations/io/IndexFileParser;
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseAndReturnAnnotationDefs(Ljava/lang/String;Ljava/io/LineNumberReader;Lscenelib/annotations/io/IndexFileParser;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private parse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1529
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 1531
    :goto_0
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1532
    const-string v0, "package"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 1535
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->checkIdentifier()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    if-nez v2, :cond_0

    .line 1536
    const/4 v2, 0x0

    .line 1538
    .local v2, "pkg":Ljava/lang/String;
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    goto :goto_1

    .line 1540
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectQualifiedName()Ljava/lang/String;

    move-result-object v2

    .line 1542
    .restart local v2    # "pkg":Ljava/lang/String;
    iget-object v4, p0, Lscenelib/annotations/io/IndexFileParser;->scene:Lscenelib/annotations/el/AScene;

    iget-object v4, v4, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".package-info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AClass;

    .line 1543
    .local v4, "p":Lscenelib/annotations/el/AClass;
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1544
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->scene:Lscenelib/annotations/el/AScene;

    iget-object v3, v3, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AClass;

    .line 1545
    .end local v4    # "p":Lscenelib/annotations/el/AClass;
    .local v3, "p":Lscenelib/annotations/el/AClass;
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1548
    .end local v3    # "p":Lscenelib/annotations/el/AClass;
    :goto_1
    if-eqz v2, :cond_1

    .line 1549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->curPkgPrefix:Ljava/lang/String;

    goto :goto_2

    .line 1551
    :cond_1
    const-string v3, ""

    iput-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->curPkgPrefix:Ljava/lang/String;

    .line 1555
    :goto_2
    const-string v3, "annotation"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1556
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotationDef()V

    goto :goto_2

    .line 1557
    :cond_2
    const-string v3, "class"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1558
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseClass()V

    goto :goto_2

    .line 1559
    :cond_3
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v0, v1, :cond_4

    .line 1560
    goto :goto_3

    .line 1562
    :cond_4
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected: `annotation\', `class\', or `package\'. Found: `"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v3, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\', ttype:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v3, v3, Ljava/io/StreamTokenizer;->ttype:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1566
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_5
    :goto_3
    goto/16 :goto_0

    .line 1618
    :cond_6
    return-void
.end method

.method private parseAFT(Ljava/lang/String;)Lscenelib/annotations/field/AnnotationFieldType;
    .locals 3
    .param p1, "annotationFullyQualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 631
    const-string v0, "unknown"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x5d

    const/16 v2, 0x5b

    if-eqz v0, :cond_0

    .line 633
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 634
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 635
    new-instance v0, Lscenelib/annotations/field/ArrayAFT;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    return-object v0

    .line 637
    :cond_0
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileParser;->parseScalarAFT(Ljava/lang/String;)Lscenelib/annotations/field/ScalarAFT;

    move-result-object v0

    .line 639
    .local v0, "baseAFT":Lscenelib/annotations/field/ScalarAFT;
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 640
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 641
    new-instance v1, Lscenelib/annotations/field/ArrayAFT;

    invoke-direct {v1, v0}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    return-object v1

    .line 643
    :cond_1
    return-object v0
.end method

.method private parseASTEntry()Lscenelib/annotations/io/ASTPath$ASTEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1263
    const-string v0, "AnnotatedType"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "underlyingType"

    const-string v2, "annotation"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .local v0, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1266
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_0
    const-string v0, "ArrayAccess"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "expression"

    if-eqz v0, :cond_1

    .line 1267
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ARRAY_ACCESS:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "index"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1268
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1
    const-string v0, "ArrayType"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "type"

    if-eqz v0, :cond_2

    .line 1269
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1270
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_2
    const-string v0, "Assert"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "condition"

    if-eqz v0, :cond_3

    .line 1271
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ASSERT:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "detail"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1272
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_3
    const-string v0, "Assignment"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "variable"

    if-eqz v0, :cond_4

    .line 1273
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1274
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_4
    const-string v0, "Binary"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1276
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "leftOperand"

    const-string v2, "rightOperand"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1277
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_5
    const-string v0, "Block"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "statement"

    if-eqz v0, :cond_6

    .line 1278
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1279
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_6
    const-string v0, "Case"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1280
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CASE:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1282
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_7
    const-string v0, "Catch"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "block"

    const-string v7, "parameter"

    if-eqz v0, :cond_8

    .line 1283
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CATCH:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1284
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_8
    const-string v0, "Class"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v8, "typeParameter"

    const-string v9, "bound"

    const-string v10, "initializer"

    if-eqz v0, :cond_9

    .line 1285
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v9, v10, v8}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v9, v10, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1288
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_9
    const-string v0, "CompoundAssignment"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1290
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1291
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_a
    const-string v0, "ConditionalExpression"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1292
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "trueExpression"

    const-string v2, "falseExpression"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1294
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_b
    const-string v0, "DoWhileLoop"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1295
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->DO_WHILE_LOOP:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1296
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_c
    const-string v0, "EnhancedForLoop"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1297
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ENHANCED_FOR_LOOP:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v4, v1, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1298
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_d
    const-string v0, "ExpressionStatement"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1299
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1300
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_e
    const-string v0, "ForLoop"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1301
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->FOR_LOOP:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "update"

    filled-new-array {v10, v3, v1, v5}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v10, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1303
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_f
    const-string v0, "If"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1304
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "thenStatement"

    const-string v2, "elseStatement"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1305
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_10
    const-string v0, "InstanceOf"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1306
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1307
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_11
    const-string v0, "LabeledStatement"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1308
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LABELED_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1309
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_12
    const-string v0, "LambdaExpression"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "body"

    if-eqz v0, :cond_13

    .line 1310
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1312
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_13
    const-string v0, "MemberReference"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v11, "typeArgument"

    if-eqz v0, :cond_14

    .line 1313
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MEMBER_REFERENCE:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "qualifierExpression"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1315
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_14
    const-string v0, "MemberSelect"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1316
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1317
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_15
    const-string v0, "Method"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1318
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v4, v2, v7, v8}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1320
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_16
    const-string v0, "MethodInvocation"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "argument"

    if-eqz v0, :cond_17

    .line 1321
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "methodSelect"

    filled-new-array {v11, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v11, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1323
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_17
    const-string v0, "NewArray"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1324
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "dimension"

    filled-new-array {v2, v1, v10}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v1, v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1326
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_18
    const-string v0, "NewClass"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1327
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "identifier"

    const-string v2, "classBody"

    const-string v3, "enclosingExpression"

    filled-new-array {v3, v11, v1, v4, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v11, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1329
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_19
    const-string v0, "ParameterizedType"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1330
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1332
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1a
    const-string v0, "Parenthesized"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1333
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PARENTHESIZED:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1334
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1b
    const-string v0, "Return"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1335
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->RETURN:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1336
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1c
    const-string v0, "Switch"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1337
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->SWITCH:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "case"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1339
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1d
    const-string v0, "Synchronized"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1340
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->SYNCHRONIZED:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1341
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1e
    const-string v0, "Throw"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1342
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->THROW:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1343
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1f
    const-string v0, "Try"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1344
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->TRY:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "finallyBlock"

    const-string v2, "catch"

    filled-new-array {v6, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1346
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_20
    const-string v0, "TypeCast"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1347
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->TYPE_CAST:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto/16 :goto_0

    .line 1348
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_21
    const-string v0, "TypeParameter"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1349
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_0

    .line 1351
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_22
    const-string v0, "Unary"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1353
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNARY_PLUS:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_0

    .line 1354
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_23
    const-string v0, "UnionType"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1355
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    const-string v1, "typeAlternative"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_0

    .line 1357
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_24
    const-string v0, "Variable"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1358
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2, v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_0

    .line 1359
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_25
    const-string v0, "WhileLoop"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1360
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->WHILE_LOOP:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_0

    .line 1361
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_26
    const-string v0, "Wildcard"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1363
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    .line 1367
    .restart local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :goto_0
    return-object v0

    .line 1365
    .end local v0    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_27
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AST path type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseASTInsertions(Lscenelib/annotations/el/ADeclaration;)Z
    .locals 7
    .param p1, "decl"    # Lscenelib/annotations/el/ADeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1156
    const/4 v0, 0x0

    .line 1157
    .local v0, "matched":Z
    :goto_0
    const-string v1, "insert-annotation"

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3a

    if-eqz v2, :cond_3

    .line 1158
    const/4 v0, 0x1

    .line 1159
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1160
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    .line 1161
    .local v1, "astPath":Lscenelib/annotations/io/ASTPath;
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1163
    invoke-static {v1}, Lscenelib/annotations/io/IndexFileParser;->selectsExpression(Lscenelib/annotations/io/ASTPath;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    iget-object v2, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/ATypeElementWithType;

    .line 1165
    .local v2, "i":Lscenelib/annotations/el/ATypeElementWithType;
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1166
    new-instance v3, Lscenelib/type/DeclaredType;

    invoke-direct {v3}, Lscenelib/type/DeclaredType;-><init>()V

    invoke-virtual {v2, v3}, Lscenelib/annotations/el/ATypeElementWithType;->setType(Lscenelib/type/Type;)V

    .line 1167
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 1168
    .end local v2    # "i":Lscenelib/annotations/el/ATypeElementWithType;
    goto :goto_2

    .line 1173
    :cond_0
    const/4 v2, 0x0

    .line 1174
    .local v2, "offset":I
    nop

    .line 1175
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->splitNewArrayType(Lscenelib/annotations/io/ASTPath;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v3

    .line 1177
    .local v3, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/InnerTypeLocation;>;"
    if-nez v3, :cond_1

    .line 1178
    iget-object v4, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .local v4, "i":Lscenelib/annotations/el/ATypeElement;
    goto :goto_1

    .line 1180
    .end local v4    # "i":Lscenelib/annotations/el/ATypeElement;
    :cond_1
    iget-object v4, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v5, v3, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 1181
    .restart local v4    # "i":Lscenelib/annotations/el/ATypeElement;
    iget-object v5, v3, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 1182
    iget-object v5, v4, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v6, v3, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 1183
    iget-object v5, v3, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v5, Lscenelib/annotations/el/InnerTypeLocation;

    iget-object v5, v5, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 1186
    :cond_2
    :goto_1
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1187
    invoke-direct {p0, v4, v2}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;I)V

    .line 1189
    .end local v1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local v2    # "offset":I
    .end local v3    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/InnerTypeLocation;>;"
    .end local v4    # "i":Lscenelib/annotations/el/ATypeElement;
    :goto_2
    goto :goto_0

    .line 1190
    :cond_3
    :goto_3
    const-string v1, "insert-typecast"

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1191
    const/4 v0, 0x1

    .line 1192
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1193
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    .line 1194
    .restart local v1    # "astPath":Lscenelib/annotations/io/ASTPath;
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1195
    iget-object v2, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/ATypeElementWithType;

    .line 1196
    .local v2, "i":Lscenelib/annotations/el/ATypeElementWithType;
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1197
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseType()Lscenelib/type/Type;

    move-result-object v4

    .line 1198
    .local v4, "type":Lscenelib/type/Type;
    invoke-virtual {v2, v4}, Lscenelib/annotations/el/ATypeElementWithType;->setType(Lscenelib/type/Type;)V

    .line 1199
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 1200
    .end local v1    # "astPath":Lscenelib/annotations/io/ASTPath;
    .end local v2    # "i":Lscenelib/annotations/el/ATypeElementWithType;
    .end local v4    # "type":Lscenelib/type/Type;
    goto :goto_3

    .line 1201
    :cond_4
    return v0
.end method

.method private parseASTPath()Lscenelib/annotations/io/ASTPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1249
    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseASTEntry()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 1250
    .local v0, "astPath":Lscenelib/annotations/io/ASTPath;
    :goto_0
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseASTEntry()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    goto :goto_0

    .line 1253
    :cond_0
    return-object v0
.end method

.method private parseAndAddArrayAFV(Lscenelib/annotations/field/ArrayAFT;Lscenelib/annotations/ArrayBuilder;)V
    .locals 3
    .param p1, "aaft"    # Lscenelib/annotations/field/ArrayAFT;
    .param p2, "arrb"    # Lscenelib/annotations/ArrayBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 448
    iget-object v0, p1, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p1, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    .line 453
    .local v0, "comp":Lscenelib/annotations/field/ScalarAFT;
    const/16 v1, 0x7b

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    const/16 v1, 0x7d

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 456
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseScalarAFV(Lscenelib/annotations/field/ScalarAFT;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lscenelib/annotations/ArrayBuilder;->appendElement(Ljava/lang/Object;)V

    .line 457
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    goto :goto_0

    .line 463
    :cond_1
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseScalarAFV(Lscenelib/annotations/field/ScalarAFT;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lscenelib/annotations/ArrayBuilder;->appendElement(Ljava/lang/Object;)V

    .line 465
    :cond_2
    invoke-interface {p2}, Lscenelib/annotations/ArrayBuilder;->finish()V

    .line 466
    return-void

    .line 451
    .end local v0    # "comp":Lscenelib/annotations/field/ScalarAFT;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array AFT has null elementType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseAndReturnAnnotationDefs(Ljava/lang/String;Ljava/io/LineNumberReader;Lscenelib/annotations/io/IndexFileParser;)Ljava/util/Map;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "in"    # Ljava/io/LineNumberReader;
    .param p2, "parser"    # Lscenelib/annotations/io/IndexFileParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/LineNumberReader;",
            "Lscenelib/annotations/io/IndexFileParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1714
    :try_start_0
    invoke-direct {p2}, Lscenelib/annotations/io/IndexFileParser;->parse()V

    .line 1715
    iget-object v0, p2, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lscenelib/annotations/io/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    .local v0, "e":Lscenelib/annotations/io/ParseException;
    new-instance v1, Lorg/checkerframework/org/plumelib/util/FileIOException;

    if-nez p0, :cond_0

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/io/LineNumberReader;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1, p1, p0, v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 1716
    .end local v0    # "e":Lscenelib/annotations/io/ParseException;
    :catch_1
    move-exception v0

    .line 1717
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/checkerframework/org/plumelib/util/FileIOException;

    if-nez p0, :cond_1

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/io/LineNumberReader;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-direct {v1, p1, p0, v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method private parseAnnotationBody(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/AnnotationBuilder;)Lscenelib/annotations/Annotation;
    .locals 4
    .param p1, "d"    # Lscenelib/annotations/el/AnnotationDef;
    .param p2, "ab"    # Lscenelib/annotations/AnnotationBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 526
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotationField(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/AnnotationBuilder;)V

    .line 528
    :goto_0
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotationField(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/AnnotationBuilder;)V

    goto :goto_0

    .line 531
    :cond_0
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 533
    :cond_1
    invoke-virtual {p2}, Lscenelib/annotations/AnnotationBuilder;->finish()Lscenelib/annotations/Annotation;

    move-result-object v0

    .line 534
    .local v0, "ann":Lscenelib/annotations/Annotation;
    iget-object v1, v0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v1, p1}, Lscenelib/annotations/el/AnnotationDef;->equals(Lscenelib/annotations/el/AnnotationDef;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 538
    invoke-virtual {v0}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v1

    iget-object v1, v1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 542
    return-object v0

    .line 539
    :cond_2
    new-instance v1, Lscenelib/annotations/io/ParseException;

    const-string v2, "At least one annotation field is missing"

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    :cond_3
    new-instance v1, Lscenelib/annotations/io/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseAnnotationBody: Annotation def isn\'t as it should be.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseAnnotationDef()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 648
    const-string v0, "annotation"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 650
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 651
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "basename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->curPkgPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "fullName":Ljava/lang/String;
    new-instance v3, Lscenelib/annotations/el/AnnotationDef;

    iget-object v4, p0, Lscenelib/annotations/io/IndexFileParser;->source:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .local v3, "ad":Lscenelib/annotations/el/AnnotationDef;
    const/16 v4, 0x3a

    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 656
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 658
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 662
    .local v4, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    :goto_0
    iget-object v5, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v5, v5, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 663
    const-string v5, "class"

    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "package"

    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 664
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAFT(Ljava/lang/String;)Lscenelib/annotations/field/AnnotationFieldType;

    move-result-object v5

    .line 665
    .local v5, "type":Lscenelib/annotations/field/AnnotationFieldType;
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 666
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 670
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .end local v5    # "type":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_0

    .line 667
    .restart local v5    # "type":Lscenelib/annotations/field/AnnotationFieldType;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_0
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate definition of field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    .end local v5    # "type":Lscenelib/annotations/field/AnnotationFieldType;
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v4}, Lscenelib/annotations/el/AnnotationDef;->setFieldTypes(Ljava/util/Map;)V

    .line 676
    invoke-virtual {p0, v3, v1}, Lscenelib/annotations/io/IndexFileParser;->addDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method private parseAnnotationField(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/AnnotationBuilder;)V
    .locals 5
    .param p1, "d"    # Lscenelib/annotations/el/AnnotationDef;
    .param p2, "ab"    # Lscenelib/annotations/AnnotationBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 471
    iget-object v0, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3d

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    .line 472
    const-string v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "value"

    .line 474
    .local v0, "fieldName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    goto :goto_0

    .line 478
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 479
    .restart local v0    # "fieldName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 483
    :cond_1
    :goto_0
    iget-object v1, p1, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/field/AnnotationFieldType;

    .line 484
    .local v1, "aft1":Lscenelib/annotations/field/AnnotationFieldType;
    if-eqz v1, :cond_5

    .line 488
    move-object v2, v1

    .line 489
    .local v2, "aft":Lscenelib/annotations/field/AnnotationFieldType;
    instance-of v3, v2, Lscenelib/annotations/field/ArrayAFT;

    if-eqz v3, :cond_3

    .line 490
    move-object v3, v2

    check-cast v3, Lscenelib/annotations/field/ArrayAFT;

    .line 491
    .local v3, "aaft":Lscenelib/annotations/field/ArrayAFT;
    iget-object v4, v3, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    if-nez v4, :cond_2

    .line 493
    const/16 v4, 0x7b

    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 494
    const/16 v4, 0x7d

    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 495
    invoke-virtual {p2, v0}, Lscenelib/annotations/AnnotationBuilder;->addEmptyArrayField(Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :cond_2
    invoke-virtual {p2, v0, v3}, Lscenelib/annotations/AnnotationBuilder;->beginArrayField(Ljava/lang/String;Lscenelib/annotations/field/ArrayAFT;)Lscenelib/annotations/ArrayBuilder;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lscenelib/annotations/io/IndexFileParser;->parseAndAddArrayAFV(Lscenelib/annotations/field/ArrayAFT;Lscenelib/annotations/ArrayBuilder;)V

    .line 499
    .end local v3    # "aaft":Lscenelib/annotations/field/ArrayAFT;
    :goto_1
    goto :goto_2

    :cond_3
    instance-of v3, v2, Lscenelib/annotations/field/ScalarAFT;

    if-eqz v3, :cond_4

    .line 500
    move-object v3, v2

    check-cast v3, Lscenelib/annotations/field/ScalarAFT;

    .line 501
    .local v3, "saft":Lscenelib/annotations/field/ScalarAFT;
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseScalarAFV(Lscenelib/annotations/field/ScalarAFT;)Ljava/lang/Object;

    move-result-object v4

    .line 502
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p2, v0, v3, v4}, Lscenelib/annotations/AnnotationBuilder;->addScalarField(Ljava/lang/String;Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)V

    .line 503
    .end local v3    # "saft":Lscenelib/annotations/field/ScalarAFT;
    .end local v4    # "value":Ljava/lang/Object;
    nop

    .line 506
    :goto_2
    return-void

    .line 504
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 485
    .end local v2    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    :cond_5
    new-instance v2, Lscenelib/annotations/io/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The annotation type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no field called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseAnnotationHead()Lscenelib/annotations/el/AnnotationDef;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 511
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 512
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AnnotationDef;

    .line 514
    .local v1, "d":Lscenelib/annotations/el/AnnotationDef;
    if-eqz v1, :cond_0

    .line 522
    return-object v1

    .line 520
    :cond_0
    new-instance v2, Lscenelib/annotations/io/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No definition for annotation type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseAnnotations(Lscenelib/annotations/el/AElement;)V
    .locals 8
    .param p1, "e"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 547
    nop

    :goto_0
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotationHead()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v0

    .line 549
    .local v0, "d":Lscenelib/annotations/el/AnnotationDef;
    sget-object v1, Lscenelib/annotations/AnnotationFactory;->saf:Lscenelib/annotations/AnnotationFactory;

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->source:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lscenelib/annotations/AnnotationFactory;->beginAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v1

    .line 550
    .local v1, "ab":Lscenelib/annotations/AnnotationBuilder;
    if-nez v1, :cond_0

    .line 554
    sget-object v2, Lscenelib/annotations/AnnotationFactory;->saf:Lscenelib/annotations/AnnotationFactory;

    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->source:Ljava/lang/String;

    .line 555
    invoke-virtual {v2, v0, v3}, Lscenelib/annotations/AnnotationFactory;->beginAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v2

    .line 554
    invoke-direct {p0, v0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotationBody(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/AnnotationBuilder;)Lscenelib/annotations/Annotation;

    .line 556
    goto :goto_2

    .line 557
    :cond_0
    invoke-direct {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotationBody(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/AnnotationBuilder;)Lscenelib/annotations/Annotation;

    move-result-object v2

    .line 558
    .local v2, "a":Lscenelib/annotations/Annotation;
    iget-object v3, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/Annotation;

    .line 559
    .local v4, "other":Lscenelib/annotations/Annotation;
    iget-object v5, v2, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v5, v5, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    iget-object v6, v4, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v6, v6, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 560
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING: duplicate annotation of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 562
    invoke-virtual {v2}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v7

    iget-object v7, v7, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 560
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    goto :goto_1

    .line 565
    .end local v4    # "other":Lscenelib/annotations/Annotation;
    :cond_1
    goto :goto_1

    .line 566
    :cond_2
    move-object v3, v2

    .line 567
    .local v3, "tla":Lscenelib/annotations/Annotation;
    iget-object v4, v3, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    invoke-virtual {v4, v0}, Lscenelib/annotations/el/AnnotationDef;->equals(Lscenelib/annotations/el/AnnotationDef;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 570
    iget-object v4, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v0    # "d":Lscenelib/annotations/el/AnnotationDef;
    .end local v1    # "ab":Lscenelib/annotations/AnnotationBuilder;
    .end local v2    # "a":Lscenelib/annotations/Annotation;
    .end local v3    # "tla":Lscenelib/annotations/Annotation;
    :goto_2
    goto :goto_0

    .line 568
    .restart local v0    # "d":Lscenelib/annotations/el/AnnotationDef;
    .restart local v1    # "ab":Lscenelib/annotations/AnnotationBuilder;
    .restart local v2    # "a":Lscenelib/annotations/Annotation;
    .restart local v3    # "tla":Lscenelib/annotations/Annotation;
    :cond_3
    new-instance v4, Lscenelib/annotations/io/ParseException;

    const-string v5, "Bad def"

    invoke-direct {v4, v5}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 573
    .end local v0    # "d":Lscenelib/annotations/el/AnnotationDef;
    .end local v1    # "ab":Lscenelib/annotations/AnnotationBuilder;
    .end local v2    # "a":Lscenelib/annotations/Annotation;
    .end local v3    # "tla":Lscenelib/annotations/Annotation;
    :cond_4
    return-void
.end method

.method private parseBlock(Lscenelib/annotations/el/ABlock;)V
    .locals 6
    .param p1, "bl"    # Lscenelib/annotations/el/ABlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 929
    const/4 v0, 0x1

    .line 931
    .local v0, "matched":Z
    :goto_0
    if-eqz v0, :cond_6

    .line 932
    const/4 v0, 0x0

    .line 934
    :goto_1
    const-string v1, "local"

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 935
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 936
    const/4 v0, 0x1

    .line 938
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->checkNNInteger()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 940
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v1

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v1

    .line 941
    .local v1, "index":I
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 942
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 943
    .local v2, "scopeStart":I
    const/16 v3, 0x2b

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 944
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v3

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v3

    .line 945
    .local v3, "scopeLength":I
    new-instance v4, Lscenelib/annotations/el/LocalLocation;

    invoke-direct {v4, v1, v2, v3}, Lscenelib/annotations/el/LocalLocation;-><init>(III)V

    move-object v1, v4

    .line 946
    .end local v2    # "scopeStart":I
    .end local v3    # "scopeLength":I
    .local v1, "loc":Lscenelib/annotations/el/LocalLocation;
    goto :goto_3

    .line 948
    .end local v1    # "loc":Lscenelib/annotations/el/LocalLocation;
    :cond_0
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "lvar":Ljava/lang/String;
    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 951
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 952
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .local v2, "varIndex":I
    goto :goto_2

    .line 955
    .end local v2    # "varIndex":I
    :cond_1
    const/4 v2, 0x0

    .line 957
    .restart local v2    # "varIndex":I
    :goto_2
    new-instance v3, Lscenelib/annotations/el/LocalLocation;

    invoke-direct {v3, v1, v2}, Lscenelib/annotations/el/LocalLocation;-><init>(Ljava/lang/String;I)V

    move-object v1, v3

    .line 959
    .end local v2    # "varIndex":I
    .local v1, "loc":Lscenelib/annotations/el/LocalLocation;
    :goto_3
    iget-object v2, p1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AField;

    .line 960
    .local v2, "l":Lscenelib/annotations/el/AField;
    const/16 v3, 0x3a

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 961
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 962
    const-string v4, "type"

    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 963
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 964
    iget-object v3, v2, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 965
    iget-object v3, v2, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 967
    .end local v1    # "loc":Lscenelib/annotations/el/LocalLocation;
    .end local v2    # "l":Lscenelib/annotations/el/AField;
    :cond_2
    goto/16 :goto_1

    .line 968
    :cond_3
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileParser;->parseExpression(Lscenelib/annotations/el/AExpression;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x1

    :goto_5
    move v0, v1

    goto/16 :goto_0

    .line 970
    :cond_6
    return-void
.end method

.method private parseBoundedType(Lscenelib/type/DeclaredType;)Lscenelib/type/BoundedType;
    .locals 3
    .param p1, "type"    # Lscenelib/type/DeclaredType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1483
    const-string v0, "extends"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    sget-object v0, Lscenelib/type/BoundedType$BoundKind;->EXTENDS:Lscenelib/type/BoundedType$BoundKind;

    .local v0, "kind":Lscenelib/type/BoundedType$BoundKind;
    goto :goto_0

    .line 1485
    .end local v0    # "kind":Lscenelib/type/BoundedType$BoundKind;
    :cond_0
    const-string v0, "super"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1486
    sget-object v0, Lscenelib/type/BoundedType$BoundKind;->SUPER:Lscenelib/type/BoundedType$BoundKind;

    .line 1490
    .restart local v0    # "kind":Lscenelib/type/BoundedType$BoundKind;
    :goto_0
    new-instance v1, Lscenelib/type/BoundedType;

    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseDeclaredType()Lscenelib/type/DeclaredType;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lscenelib/type/BoundedType;-><init>(Lscenelib/type/DeclaredType;Lscenelib/type/BoundedType$BoundKind;Lscenelib/type/DeclaredType;)V

    return-object v1

    .line 1488
    .end local v0    # "kind":Lscenelib/type/BoundedType$BoundKind;
    :cond_1
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal bound kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseBounds(Lscenelib/annotations/util/coll/VivifyingMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/BoundLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 742
    .local p1, "bounds":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    nop

    :goto_0
    const-string v0, "typeparam"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "bound"

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 766
    :cond_0
    return-void

    .line 743
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_2

    .line 744
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v0

    .line 745
    .local v0, "paramIndex":I
    new-instance v2, Lscenelib/annotations/el/BoundLocation;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lscenelib/annotations/el/BoundLocation;-><init>(II)V

    .line 746
    .local v2, "bl":Lscenelib/annotations/el/BoundLocation;
    invoke-virtual {p1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 747
    .local v3, "b":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 748
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 750
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 751
    .end local v0    # "paramIndex":I
    .end local v2    # "bl":Lscenelib/annotations/el/BoundLocation;
    .end local v3    # "b":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 753
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v0

    .line 754
    .restart local v0    # "paramIndex":I
    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 755
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 756
    .local v2, "boundIndex":I
    new-instance v3, Lscenelib/annotations/el/BoundLocation;

    invoke-direct {v3, v0, v2}, Lscenelib/annotations/el/BoundLocation;-><init>(II)V

    .line 757
    .local v3, "bl":Lscenelib/annotations/el/BoundLocation;
    invoke-virtual {p1, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 758
    .local v4, "b":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 759
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 761
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 762
    .end local v0    # "paramIndex":I
    .end local v2    # "boundIndex":I
    .end local v3    # "bl":Lscenelib/annotations/el/BoundLocation;
    .end local v4    # "b":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 763
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseClass()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1494
    const-string v0, "class"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 1495
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1496
    .local v0, "basename":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->curPkgPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "fullName":Ljava/lang/String;
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->scene:Lscenelib/annotations/el/AScene;

    iget-object v2, v2, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AClass;

    .line 1499
    .local v2, "c":Lscenelib/annotations/el/AClass;
    const/16 v3, 0x3a

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1501
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1502
    iget-object v3, v2, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseBounds(Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 1504
    :goto_0
    const-string v3, "extends"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1505
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseExtends(Lscenelib/annotations/el/AClass;)V

    goto :goto_0

    .line 1507
    :cond_0
    :goto_1
    const-string v3, "implements"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1508
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseImplements(Lscenelib/annotations/el/AClass;)V

    goto :goto_1

    .line 1510
    :cond_1
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseASTInsertions(Lscenelib/annotations/el/ADeclaration;)Z

    .line 1512
    :goto_2
    const-string v3, "field"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1513
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseField(Lscenelib/annotations/el/AClass;)V

    goto :goto_2

    .line 1515
    :cond_2
    :goto_3
    const-string v3, "staticinit"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1516
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseStaticInit(Lscenelib/annotations/el/AClass;)V

    goto :goto_3

    .line 1518
    :cond_3
    :goto_4
    const-string v3, "instanceinit"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1519
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseInstanceInit(Lscenelib/annotations/el/AClass;)V

    goto :goto_4

    .line 1521
    :cond_4
    :goto_5
    const-string v3, "method"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1522
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseMethod(Lscenelib/annotations/el/AClass;)V

    goto :goto_5

    .line 1524
    :cond_5
    iget-object v3, v2, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 1525
    return-void
.end method

.method private parseDeclaredType()Lscenelib/type/DeclaredType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1448
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1450
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchPrimitiveType()Ljava/lang/String;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_0

    goto :goto_0

    .line 1452
    :cond_0
    new-instance v1, Lscenelib/annotations/io/ParseException;

    const-string v2, "Expected identifier or primitive type"

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1455
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseDeclaredType(Ljava/lang/String;)Lscenelib/type/DeclaredType;

    move-result-object v1

    return-object v1
.end method

.method private parseDeclaredType(Ljava/lang/String;)Lscenelib/type/DeclaredType;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1463
    new-instance v0, Lscenelib/type/DeclaredType;

    invoke-direct {v0, p1}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v0, "type":Lscenelib/type/DeclaredType;
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1465
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseType()Lscenelib/type/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/type/DeclaredType;->addTypeParameter(Lscenelib/type/Type;)V

    .line 1466
    :goto_0
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseType()Lscenelib/type/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/type/DeclaredType;->addTypeParameter(Lscenelib/type/Type;)V

    goto :goto_0

    .line 1469
    :cond_0
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1471
    :cond_1
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1472
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseDeclaredType()Lscenelib/type/DeclaredType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/type/DeclaredType;->setInnerType(Lscenelib/type/DeclaredType;)V

    .line 1474
    :cond_2
    return-object v0
.end method

.method private parseExpression(Lscenelib/annotations/el/AExpression;)Z
    .locals 14
    .param p1, "exp"    # Lscenelib/annotations/el/AExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 974
    const/4 v0, 0x1

    .line 975
    .local v0, "matched":Z
    const/4 v1, 0x0

    .line 977
    .local v1, "evermatched":Z
    :cond_0
    if-eqz v0, :cond_16

    .line 978
    const/4 v0, 0x0

    .line 980
    :goto_0
    const-string v2, "typecast"

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x2a

    const/16 v5, 0x3a

    const/16 v6, 0x2c

    const/16 v7, 0x23

    if-eqz v3, :cond_4

    .line 981
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 982
    const/4 v0, 0x1

    .line 983
    const/4 v1, 0x1

    .line 985
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 986
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 987
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 988
    .local v2, "offset":I
    const/4 v3, 0x0

    .line 989
    .local v3, "type_index":I
    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 990
    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 991
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v4

    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v3

    .line 993
    :cond_1
    invoke-static {v2, v3}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v2

    .line 994
    .end local v3    # "type_index":I
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    goto :goto_1

    .line 995
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    :cond_2
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 996
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 997
    .local v2, "index":I
    const/4 v3, 0x0

    .line 998
    .restart local v3    # "type_index":I
    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 999
    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1000
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v4

    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v3

    .line 1002
    :cond_3
    invoke-static {v2, v3}, Lscenelib/annotations/el/RelativeLocation;->createIndex(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v4

    move-object v2, v4

    .line 1004
    .end local v3    # "type_index":I
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    :goto_1
    iget-object v3, p1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 1005
    .local v3, "t":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1006
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1007
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 1008
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "t":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 1009
    :cond_4
    :goto_2
    const-string v2, "instanceof"

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    .line 1010
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1011
    const/4 v0, 0x1

    .line 1012
    const/4 v1, 0x1

    .line 1014
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1015
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1016
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 1017
    .local v2, "offset":I
    invoke-static {v2, v8}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v2

    .line 1018
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    goto :goto_3

    .line 1019
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    :cond_5
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1020
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 1021
    .local v2, "index":I
    invoke-static {v2, v8}, Lscenelib/annotations/el/RelativeLocation;->createIndex(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v3

    move-object v2, v3

    .line 1023
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    :goto_3
    iget-object v3, p1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 1024
    .local v3, "i":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1025
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1026
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 1027
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "i":Lscenelib/annotations/el/ATypeElement;
    goto :goto_2

    .line 1028
    :cond_6
    :goto_4
    const-string v2, "new"

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1029
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1030
    const/4 v0, 0x1

    .line 1031
    const/4 v1, 0x1

    .line 1033
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1034
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1035
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 1036
    .local v2, "offset":I
    invoke-static {v2, v8}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v2

    .line 1037
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    goto :goto_5

    .line 1038
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    :cond_7
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1039
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 1040
    .local v2, "index":I
    invoke-static {v2, v8}, Lscenelib/annotations/el/RelativeLocation;->createIndex(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v3

    move-object v2, v3

    .line 1042
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    :goto_5
    iget-object v3, p1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 1043
    .local v3, "n":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1044
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1045
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 1046
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "n":Lscenelib/annotations/el/ATypeElement;
    goto :goto_4

    .line 1047
    :cond_8
    :goto_6
    const-string v2, "call"

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    const-string v9, "typearg"

    if-eqz v3, :cond_d

    .line 1048
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1049
    const/4 v0, 0x1

    .line 1050
    const/4 v1, 0x1

    .line 1052
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v2

    .line 1053
    .local v2, "isOffset":Z
    if-eqz v2, :cond_9

    move v3, v7

    goto :goto_7

    :cond_9
    move v3, v4

    :goto_7
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1054
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v3

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v3

    .line 1055
    .local v3, "i":I
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1056
    :goto_8
    invoke-direct {p0, v9}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1057
    invoke-direct {p0, v9}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1058
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    .line 1059
    :cond_a
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v10

    invoke-direct {p0, v10}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v10

    .line 1060
    .local v10, "type_index":I
    if-eqz v2, :cond_b

    .line 1061
    invoke-static {v3, v10}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v11

    goto :goto_9

    .line 1062
    :cond_b
    invoke-static {v3, v10}, Lscenelib/annotations/el/RelativeLocation;->createIndex(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v11

    :goto_9
    nop

    .line 1063
    .local v11, "loc":Lscenelib/annotations/el/RelativeLocation;
    iget-object v12, p1, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v12, v11}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lscenelib/annotations/el/ATypeElement;

    .line 1064
    .local v12, "t":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1065
    invoke-direct {p0, v12}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1066
    invoke-direct {p0, v12}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 1067
    .end local v10    # "type_index":I
    .end local v11    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v12    # "t":Lscenelib/annotations/el/ATypeElement;
    goto :goto_8

    .line 1068
    .end local v2    # "isOffset":Z
    .end local v3    # "i":I
    :cond_c
    goto :goto_6

    .line 1069
    :cond_d
    :goto_a
    const-string v2, "reference"

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1070
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1071
    const/4 v0, 0x1

    .line 1072
    const/4 v1, 0x1

    .line 1076
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v2

    .line 1077
    .restart local v2    # "isOffset":Z
    if-eqz v2, :cond_e

    .line 1078
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1079
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v3

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v3

    .line 1080
    .restart local v3    # "i":I
    invoke-static {v3, v8}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v10

    .local v10, "loc":Lscenelib/annotations/el/RelativeLocation;
    goto :goto_b

    .line 1082
    .end local v3    # "i":I
    .end local v10    # "loc":Lscenelib/annotations/el/RelativeLocation;
    :cond_e
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1083
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v3

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v3

    .line 1084
    .restart local v3    # "i":I
    invoke-static {v3, v8}, Lscenelib/annotations/el/RelativeLocation;->createIndex(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v10

    .line 1086
    .restart local v10    # "loc":Lscenelib/annotations/el/RelativeLocation;
    :goto_b
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1087
    iget-object v11, p1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v11, v10}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscenelib/annotations/el/ATypeElement;

    .line 1088
    .local v11, "t":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v11}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1089
    invoke-direct {p0, v11}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 1090
    :goto_c
    invoke-direct {p0, v9}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1091
    invoke-direct {p0, v9}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1092
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    .line 1093
    :cond_f
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v12

    invoke-direct {p0, v12}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v12

    .line 1094
    .local v12, "type_index":I
    if-eqz v2, :cond_10

    .line 1095
    invoke-static {v3, v12}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v13

    goto :goto_d

    .line 1096
    :cond_10
    invoke-static {v3, v12}, Lscenelib/annotations/el/RelativeLocation;->createIndex(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v13

    :goto_d
    move-object v10, v13

    .line 1097
    iget-object v13, p1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v13, v10}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    check-cast v11, Lscenelib/annotations/el/ATypeElement;

    .line 1098
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1099
    invoke-direct {p0, v11}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 1100
    invoke-direct {p0, v11}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 1101
    .end local v12    # "type_index":I
    goto :goto_c

    .line 1102
    .end local v2    # "isOffset":Z
    .end local v3    # "i":I
    .end local v10    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v11    # "t":Lscenelib/annotations/el/ATypeElement;
    :cond_11
    goto :goto_a

    .line 1103
    :cond_12
    :goto_e
    const-string v2, "lambda"

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1104
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 1105
    const/4 v0, 0x1

    .line 1106
    const/4 v1, 0x1

    .line 1108
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1109
    invoke-direct {p0, v7}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1110
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 1111
    .local v2, "offset":I
    const/4 v3, 0x0

    .line 1112
    .local v3, "type_index":I
    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1113
    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1114
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v8

    invoke-direct {p0, v8}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v3

    .line 1116
    :cond_13
    invoke-static {v2, v3}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v2

    .line 1117
    .end local v3    # "type_index":I
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    goto :goto_f

    .line 1118
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    :cond_14
    invoke-direct {p0, v4}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1119
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v2

    .line 1120
    .local v2, "index":I
    const/4 v3, 0x0

    .line 1121
    .restart local v3    # "type_index":I
    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1122
    invoke-direct {p0, v6}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1123
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v8

    invoke-direct {p0, v8}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v3

    .line 1125
    :cond_15
    invoke-static {v2, v3}, Lscenelib/annotations/el/RelativeLocation;->createIndex(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v8

    move-object v2, v8

    .line 1127
    .end local v3    # "type_index":I
    .local v2, "loc":Lscenelib/annotations/el/RelativeLocation;
    :goto_f
    iget-object v3, p1, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AMethod;

    .line 1128
    .local v3, "m":Lscenelib/annotations/el/AMethod;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1130
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->parseLambda(Lscenelib/annotations/el/AMethod;)V

    .line 1132
    .end local v2    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v3    # "m":Lscenelib/annotations/el/AMethod;
    goto :goto_e

    .line 1134
    :cond_16
    return v1
.end method

.method private parseExtends(Lscenelib/annotations/el/AClass;)V
    .locals 3
    .param p1, "cls"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 769
    const-string v0, "extends"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 770
    new-instance v0, Lscenelib/annotations/el/TypeIndexLocation;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lscenelib/annotations/el/TypeIndexLocation;-><init>(I)V

    .line 771
    .local v0, "idx":Lscenelib/annotations/el/TypeIndexLocation;
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1, v0}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 772
    .local v1, "ext":Lscenelib/annotations/el/ATypeElement;
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 773
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 774
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 775
    return-void
.end method

.method private parseField(Lscenelib/annotations/el/AClass;)V
    .locals 5
    .param p1, "c"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 789
    const-string v0, "field"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 790
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1, v0}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AField;

    .line 793
    .local v1, "f":Lscenelib/annotations/el/AField;
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 794
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 795
    const-string v3, "type"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 797
    iget-object v2, v1, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 798
    iget-object v2, v1, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 801
    :cond_0
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v0}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AExpression;

    iput-object v2, v1, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    .line 802
    iget-object v2, v1, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseExpression(Lscenelib/annotations/el/AExpression;)Z

    .line 803
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseASTInsertions(Lscenelib/annotations/el/ADeclaration;)Z

    .line 804
    return-void
.end method

.method public static parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "scene"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AScene;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1689
    new-instance v0, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 1690
    .local v0, "in":Ljava/io/LineNumberReader;
    new-instance v1, Lscenelib/annotations/io/IndexFileParser;

    invoke-direct {v1, v0, p0, p1}, Lscenelib/annotations/io/IndexFileParser;-><init>(Ljava/io/Reader;Ljava/lang/String;Lscenelib/annotations/el/AScene;)V

    .line 1691
    .local v1, "parser":Lscenelib/annotations/io/IndexFileParser;
    invoke-static {p0, v0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseAndReturnAnnotationDefs(Ljava/lang/String;Ljava/io/LineNumberReader;Lscenelib/annotations/io/IndexFileParser;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private parseImplements(Lscenelib/annotations/el/AClass;)V
    .locals 4
    .param p1, "cls"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 778
    const-string v0, "implements"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v0

    .line 780
    .local v0, "implIndex":I
    new-instance v1, Lscenelib/annotations/el/TypeIndexLocation;

    invoke-direct {v1, v0}, Lscenelib/annotations/el/TypeIndexLocation;-><init>(I)V

    .line 781
    .local v1, "idx":Lscenelib/annotations/el/TypeIndexLocation;
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/ATypeElement;

    .line 782
    .local v2, "impl":Lscenelib/annotations/el/ATypeElement;
    const/16 v3, 0x3a

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 783
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 784
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 785
    return-void
.end method

.method private parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V
    .locals 1
    .param p1, "e"    # Lscenelib/annotations/el/ATypeElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 715
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;I)V

    .line 716
    return-void
.end method

.method private parseInnerTypes(Lscenelib/annotations/el/ATypeElement;I)V
    .locals 4
    .param p1, "e"    # Lscenelib/annotations/el/ATypeElement;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 720
    nop

    :goto_0
    const-string v0, "inner-type"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v0, "locNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v1

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :goto_1
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v1

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 730
    :cond_0
    :try_start_0
    new-instance v1, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v0}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->getTypePathFromBinary(Ljava/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .local v1, "loc":Lscenelib/annotations/el/InnerTypeLocation;
    nop

    .line 734
    iget-object v2, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    .line 735
    .local v2, "it":Lscenelib/annotations/el/AElement;
    const/16 v3, 0x3a

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 736
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 737
    .end local v0    # "locNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "loc":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v2    # "it":Lscenelib/annotations/el/AElement;
    goto :goto_0

    .line 731
    .restart local v0    # "locNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 732
    .local v1, "ex":Ljava/lang/AssertionError;
    new-instance v2, Lscenelib/annotations/io/ParseException;

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 738
    .end local v0    # "locNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "ex":Ljava/lang/AssertionError;
    :cond_1
    return-void
.end method

.method private parseInstanceInit(Lscenelib/annotations/el/AClass;)V
    .locals 3
    .param p1, "c"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 819
    const-string v0, "instanceinit"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 820
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 821
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v0

    .line 822
    .local v0, "blockIndex":I
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 824
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ABlock;

    .line 825
    .local v1, "instanceinit":Lscenelib/annotations/el/ABlock;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseBlock(Lscenelib/annotations/el/ABlock;)V

    .line 826
    return-void
.end method

.method private parseLambda(Lscenelib/annotations/el/AMethod;)V
    .locals 5
    .param p1, "m"    # Lscenelib/annotations/el/AMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 906
    nop

    :goto_0
    const-string v0, "parameter"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 907
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    .line 909
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    .line 912
    :cond_0
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v0

    .line 913
    .local v0, "idx":I
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AField;

    .line 914
    .local v1, "p":Lscenelib/annotations/el/AField;
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 915
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 916
    const-string v3, "type"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 917
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 918
    iget-object v2, v1, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 919
    iget-object v2, v1, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 921
    .end local v0    # "idx":I
    .end local v1    # "p":Lscenelib/annotations/el/AField;
    :cond_1
    goto :goto_0

    .line 924
    :cond_2
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileParser;->parseASTInsertions(Lscenelib/annotations/el/ADeclaration;)Z

    .line 925
    return-void
.end method

.method private parseMethod(Lscenelib/annotations/el/AClass;)V
    .locals 4
    .param p1, "c"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 830
    const-string v0, "method"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 833
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "basename":Ljava/lang/String;
    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "clinit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 836
    :cond_0
    new-instance v1, Lscenelib/annotations/io/ParseException;

    const-string v2, "The only special methods allowed are <init> and <clinit>"

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 839
    :cond_1
    :goto_0
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "key":Ljava/lang/String;
    goto :goto_1

    .line 842
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 845
    .restart local v0    # "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AClass: (?:[^. ]+\\.)*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-virtual {p1}, Lscenelib/annotations/el/AClass;->toString()Ljava/lang/String;

    move-result-object v2

    .line 845
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 847
    const-string v0, "<init>"

    .line 851
    :cond_3
    :goto_1
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    :goto_2
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v1

    if-nez v1, :cond_7

    .line 854
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v1, v1, Ljava/io/StreamTokenizer;->ttype:I

    if-ltz v1, :cond_5

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v2, v2, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_4

    const/16 v2, 0x2f

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v2, v2, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v2, v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 856
    :cond_5
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v1, v1, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_6

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    :goto_4
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_2

    .line 859
    :cond_6
    new-instance v1, Lscenelib/annotations/io/ParseException;

    const-string v2, "Found something that doesn\'t belong in a signature"

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    :cond_7
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1, v0}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AMethod;

    .line 865
    .local v1, "m":Lscenelib/annotations/el/AMethod;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 866
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseMethod(Lscenelib/annotations/el/AMethod;)V

    .line 867
    return-void
.end method

.method private parseMethod(Lscenelib/annotations/el/AMethod;)V
    .locals 5
    .param p1, "m"    # Lscenelib/annotations/el/AMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 870
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseBounds(Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 873
    :goto_0
    const-string v0, "return"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "parameter"

    const-string v3, "receiver"

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 901
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseBlock(Lscenelib/annotations/el/ABlock;)V

    .line 902
    invoke-direct {p0, p1}, Lscenelib/annotations/io/IndexFileParser;->parseASTInsertions(Lscenelib/annotations/el/ADeclaration;)Z

    .line 903
    return-void

    .line 874
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_2

    .line 875
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 876
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 877
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    goto :goto_0

    .line 878
    :cond_2
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 880
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->checkChar(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 881
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    .line 883
    :cond_3
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v0

    .line 884
    .local v0, "idx":I
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AField;

    .line 885
    .local v2, "p":Lscenelib/annotations/el/AField;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 886
    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 887
    const-string v3, "type"

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 888
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 889
    iget-object v1, v2, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 890
    iget-object v1, v2, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    .line 892
    .end local v0    # "idx":I
    .end local v2    # "p":Lscenelib/annotations/el/AField;
    :cond_4
    goto :goto_0

    :cond_5
    invoke-direct {p0, v3}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 893
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 894
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v0, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotations(Lscenelib/annotations/el/AElement;)V

    .line 895
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v0, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseInnerTypes(Lscenelib/annotations/el/ATypeElement;)V

    goto/16 :goto_0

    .line 897
    :cond_6
    new-instance v0, Ljava/lang/Error;

    const-string v1, "This can\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseScalarAFT(Ljava/lang/String;)Lscenelib/annotations/field/ScalarAFT;
    .locals 5
    .param p1, "annotationFullyQualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 582
    sget-object v0, Lscenelib/annotations/field/BasicAFT;->bafts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/field/BasicAFT;

    .line 583
    .local v1, "baft":Lscenelib/annotations/field/BasicAFT;
    invoke-virtual {v1}, Lscenelib/annotations/field/BasicAFT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    return-object v1

    .line 586
    .end local v1    # "baft":Lscenelib/annotations/field/BasicAFT;
    :cond_0
    goto :goto_0

    .line 588
    :cond_1
    const-string v0, "Class"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    sget-object v0, Lscenelib/annotations/field/ClassTokenAFT;->ctaft:Lscenelib/annotations/field/ClassTokenAFT;

    return-object v0

    .line 590
    :cond_2
    const-string v0, "enum"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 591
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "name":Ljava/lang/String;
    sget-boolean v1, Lscenelib/annotations/io/IndexFileParser;->abbreviate:Z

    if-eqz v1, :cond_4

    .line 593
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 594
    .local v1, "i":I
    if-ltz v1, :cond_4

    .line 595
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->scene:Lscenelib/annotations/el/AScene;

    iget-object v2, v2, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 596
    .local v2, "importSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 597
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    move-object v2, v3

    .line 598
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->scene:Lscenelib/annotations/el/AScene;

    iget-object v3, v3, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "baseName":Ljava/lang/String;
    move-object v0, v3

    .line 605
    .end local v1    # "i":I
    .end local v2    # "importSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "baseName":Ljava/lang/String;
    :cond_4
    new-instance v1, Lscenelib/annotations/field/EnumAFT;

    invoke-direct {v1, v0}, Lscenelib/annotations/field/EnumAFT;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 606
    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    const-string v0, "annotation-field"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 607
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 608
    .restart local v0    # "name":Ljava/lang/String;
    iget-object v1, p0, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AnnotationDef;

    .line 609
    .local v1, "ad":Lscenelib/annotations/el/AnnotationDef;
    if-eqz v1, :cond_6

    .line 612
    new-instance v2, Lscenelib/annotations/field/AnnotationAFT;

    invoke-direct {v2, v1}, Lscenelib/annotations/field/AnnotationAFT;-><init>(Lscenelib/annotations/el/AnnotationDef;)V

    return-object v2

    .line 610
    :cond_6
    new-instance v2, Lscenelib/annotations/io/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Annotation type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " used as a field before it is defined"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 614
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "ad":Lscenelib/annotations/el/AnnotationDef;
    :cond_7
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected the beginning of an annotation field type: a primitive type, `String\', `Class\', `enum\', or `annotation-field\'. Got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseScalarAFV(Lscenelib/annotations/field/ScalarAFT;)Ljava/lang/Object;
    .locals 6
    .param p1, "aft"    # Lscenelib/annotations/field/ScalarAFT;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 352
    instance-of v0, p1, Lscenelib/annotations/field/BasicAFT;

    if-eqz v0, :cond_f

    .line 354
    move-object v0, p1

    check-cast v0, Lscenelib/annotations/field/BasicAFT;

    .line 355
    .local v0, "baft":Lscenelib/annotations/field/BasicAFT;
    iget-object v1, v0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    .line 356
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 357
    const-string v2, "true"

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "val":Ljava/lang/Object;
    goto/16 :goto_1

    .line 359
    .end local v2    # "val":Ljava/lang/Object;
    :cond_0
    const-string v2, "false"

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/Object;
    goto/16 :goto_1

    .line 362
    .end local v2    # "val":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lscenelib/annotations/io/ParseException;

    const-string v3, "Expected `true\' or `false\'"

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_2
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    .line 365
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v2, v2, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v5, 0x27

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 366
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 370
    .restart local v2    # "val":Ljava/lang/Object;
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I

    goto/16 :goto_1

    .line 368
    .end local v2    # "val":Ljava/lang/Object;
    :cond_3
    new-instance v2, Lscenelib/annotations/io/ParseException;

    const-string v3, "Expected a character literal"

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 371
    :cond_4
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_6

    .line 372
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v2, v2, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_5

    .line 373
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-object v2, v2, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 377
    .restart local v2    # "val":Ljava/lang/Object;
    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_1

    .line 375
    .end local v2    # "val":Ljava/lang/Object;
    :cond_5
    new-instance v2, Lscenelib/annotations/io/ParseException;

    const-string v3, "Expected a string literal"

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_6
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget v2, v2, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_e

    .line 380
    iget-object v2, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    iget-wide v2, v2, Ljava/io/StreamTokenizer;->nval:D

    .line 384
    .local v2, "n":D
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_7

    .line 385
    double-to-int v4, v2

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .local v4, "val":Ljava/lang/Object;
    goto :goto_0

    .line 386
    .end local v4    # "val":Ljava/lang/Object;
    :cond_7
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_8

    .line 387
    double-to-int v4, v2

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 388
    .end local v4    # "val":Ljava/lang/Object;
    :cond_8
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_9

    .line 389
    double-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 390
    .end local v4    # "val":Ljava/lang/Object;
    :cond_9
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_a

    .line 391
    double-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 392
    .end local v4    # "val":Ljava/lang/Object;
    :cond_a
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_b

    .line 393
    double-to-float v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 394
    .end local v4    # "val":Ljava/lang/Object;
    :cond_b
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_d

    .line 395
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 399
    .restart local v4    # "val":Ljava/lang/Object;
    :goto_0
    iget-object v5, p0, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v5}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 400
    .end local v2    # "n":D
    move-object v2, v4

    .line 405
    .end local v4    # "val":Ljava/lang/Object;
    .local v2, "val":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1, v2}, Lscenelib/annotations/field/ScalarAFT;->isValidValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 406
    return-object v2

    .line 405
    :cond_c
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 397
    .local v2, "n":D
    :cond_d
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 401
    .end local v2    # "n":D
    :cond_e
    new-instance v2, Lscenelib/annotations/io/ParseException;

    const-string v3, "Expected a number literal"

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    .end local v0    # "baft":Lscenelib/annotations/field/BasicAFT;
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    instance-of v0, p1, Lscenelib/annotations/field/ClassTokenAFT;

    if-eqz v0, :cond_12

    .line 408
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectClassGetName()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "cgname":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lscenelib/annotations/io/IndexFileParser;->primitiveTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 412
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .local v1, "tktype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 414
    .end local v1    # "tktype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 416
    .restart local v1    # "tktype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    invoke-virtual {p1, v1}, Lscenelib/annotations/field/ScalarAFT;->isValidValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 417
    return-object v1

    .line 416
    :cond_11
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "cgname":Ljava/lang/String;
    .end local p1    # "aft":Lscenelib/annotations/field/ScalarAFT;
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v1    # "tktype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "cgname":Ljava/lang/String;
    .restart local p1    # "aft":Lscenelib/annotations/field/ScalarAFT;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lscenelib/annotations/io/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 421
    .end local v0    # "cgname":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_12
    instance-of v0, p1, Lscenelib/annotations/field/EnumAFT;

    if-eqz v0, :cond_14

    .line 422
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->expectQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lscenelib/annotations/field/ScalarAFT;->isValidValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 424
    return-object v0

    .line 423
    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 425
    .end local v0    # "name":Ljava/lang/String;
    :cond_14
    instance-of v0, p1, Lscenelib/annotations/field/AnnotationAFT;

    if-eqz v0, :cond_18

    .line 426
    move-object v0, p1

    check-cast v0, Lscenelib/annotations/field/AnnotationAFT;

    .line 427
    .local v0, "aaft":Lscenelib/annotations/field/AnnotationAFT;
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotationHead()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v1

    .line 428
    .local v1, "d":Lscenelib/annotations/el/AnnotationDef;
    iget-object v2, v1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    iget-object v3, v0, Lscenelib/annotations/field/AnnotationAFT;->annotationDef:Lscenelib/annotations/el/AnnotationDef;

    iget-object v3, v3, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 433
    sget-object v2, Lscenelib/annotations/AnnotationFactory;->saf:Lscenelib/annotations/AnnotationFactory;

    iget-object v3, p0, Lscenelib/annotations/io/IndexFileParser;->source:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lscenelib/annotations/AnnotationFactory;->beginAnnotation(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v2

    .line 436
    .local v2, "ab":Lscenelib/annotations/AnnotationBuilder;
    if-eqz v2, :cond_16

    .line 437
    move-object v3, v2

    .line 438
    .local v3, "ab2":Lscenelib/annotations/AnnotationBuilder;
    invoke-direct {p0, v1, v3}, Lscenelib/annotations/io/IndexFileParser;->parseAnnotationBody(Lscenelib/annotations/el/AnnotationDef;Lscenelib/annotations/AnnotationBuilder;)Lscenelib/annotations/Annotation;

    move-result-object v4

    .line 439
    .local v4, "suba":Lscenelib/annotations/Annotation;
    invoke-virtual {p1, v4}, Lscenelib/annotations/field/ScalarAFT;->isValidValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 440
    return-object v4

    .line 439
    :cond_15
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 436
    .end local v3    # "ab2":Lscenelib/annotations/AnnotationBuilder;
    .end local v4    # "suba":Lscenelib/annotations/Annotation;
    :cond_16
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 429
    .end local v2    # "ab":Lscenelib/annotations/AnnotationBuilder;
    :cond_17
    new-instance v2, Lscenelib/annotations/io/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got an "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subannotation where an "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lscenelib/annotations/field/AnnotationAFT;->annotationDef:Lscenelib/annotations/el/AnnotationDef;

    iget-object v4, v4, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 442
    .end local v0    # "aaft":Lscenelib/annotations/field/AnnotationAFT;
    .end local v1    # "d":Lscenelib/annotations/el/AnnotationDef;
    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "IndexFileParser.parseScalarAFV: unreachable code."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private parseStaticInit(Lscenelib/annotations/el/AClass;)V
    .locals 3
    .param p1, "c"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 808
    const-string v0, "staticinit"

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectKeyword(Ljava/lang/String;)V

    .line 809
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 810
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->matchNNInteger()I

    move-result v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->expectNonNegative(I)I

    move-result v0

    .line 811
    .local v0, "blockIndex":I
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 813
    iget-object v1, p1, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/ABlock;

    .line 814
    .local v1, "staticinit":Lscenelib/annotations/el/ABlock;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->parseBlock(Lscenelib/annotations/el/ABlock;)V

    .line 815
    return-void
.end method

.method public static parseString(Ljava/lang/String;Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;
    .locals 4
    .param p0, "fileContents"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "scene"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AScene;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AnnotationDef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "While parsing string from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \n----------------BEGIN----------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----------------END----------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 1706
    .local v1, "in":Ljava/io/LineNumberReader;
    new-instance v2, Lscenelib/annotations/io/IndexFileParser;

    invoke-direct {v2, v1, v0, p2}, Lscenelib/annotations/io/IndexFileParser;-><init>(Ljava/io/Reader;Ljava/lang/String;Lscenelib/annotations/el/AScene;)V

    .line 1707
    .local v2, "parser":Lscenelib/annotations/io/IndexFileParser;
    invoke-static {v0, v1, v2}, Lscenelib/annotations/io/IndexFileParser;->parseAndReturnAnnotationDefs(Ljava/lang/String;Ljava/io/LineNumberReader;Lscenelib/annotations/io/IndexFileParser;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method private parseType()Lscenelib/type/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 1427
    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    new-instance v0, Lscenelib/type/DeclaredType;

    const-string v1, "?"

    invoke-direct {v0, v1}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    .local v0, "declaredType":Lscenelib/type/DeclaredType;
    goto :goto_0

    .line 1430
    .end local v0    # "declaredType":Lscenelib/type/DeclaredType;
    :cond_0
    invoke-direct {p0}, Lscenelib/annotations/io/IndexFileParser;->parseDeclaredType()Lscenelib/type/DeclaredType;

    move-result-object v0

    .line 1432
    .restart local v0    # "declaredType":Lscenelib/type/DeclaredType;
    :goto_0
    const-string v1, "extends"

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "super"

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileParser;->checkKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 1435
    :cond_1
    move-object v1, v0

    .line 1436
    .local v1, "type":Lscenelib/type/Type;
    :goto_1
    const/16 v2, 0x5b

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->matchChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1437
    const/16 v2, 0x5d

    invoke-direct {p0, v2}, Lscenelib/annotations/io/IndexFileParser;->expectChar(C)V

    .line 1438
    new-instance v2, Lscenelib/type/ArrayType;

    invoke-direct {v2, v1}, Lscenelib/type/ArrayType;-><init>(Lscenelib/type/Type;)V

    move-object v1, v2

    goto :goto_1

    .line 1440
    :cond_2
    return-object v1

    .line 1433
    .end local v1    # "type":Lscenelib/type/Type;
    :cond_3
    :goto_2
    invoke-direct {p0, v0}, Lscenelib/annotations/io/IndexFileParser;->parseBoundedType(Lscenelib/type/DeclaredType;)Lscenelib/type/BoundedType;

    move-result-object v1

    return-object v1
.end method

.method public static parseType(Ljava/lang/String;Ljava/lang/String;)Lscenelib/type/Type;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .line 1731
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v0, "in":Ljava/io/StringReader;
    new-instance v1, Lscenelib/annotations/io/IndexFileParser;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lscenelib/annotations/io/IndexFileParser;-><init>(Ljava/io/Reader;Ljava/lang/String;Lscenelib/annotations/el/AScene;)V

    .line 1734
    .local v1, "parser":Lscenelib/annotations/io/IndexFileParser;
    :try_start_0
    iget-object v2, v1, Lscenelib/annotations/io/IndexFileParser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v2}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 1735
    invoke-direct {v1}, Lscenelib/annotations/io/IndexFileParser;->parseType()Lscenelib/type/Type;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1736
    :catch_0
    move-exception v2

    .line 1737
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing type from: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static selectsExpression(Lscenelib/annotations/io/ASTPath;)Z
    .locals 4
    .param p0, "astPath"    # Lscenelib/annotations/io/ASTPath;

    .line 1142
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v0

    .line 1143
    .local v0, "n":I
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1144
    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 1145
    .local v1, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 1146
    const-string v2, "expression"

    invoke-virtual {v1, v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    invoke-virtual {p0, v0}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    goto :goto_0

    .line 1149
    :cond_0
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getChildSelector()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lscenelib/annotations/io/IndexFileParser;->isTypeSelector(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 1151
    .end local v1    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static setAbbreviate(Z)V
    .locals 0
    .param p0, "b"    # Z

    .line 107
    sput-boolean p0, Lscenelib/annotations/io/IndexFileParser;->abbreviate:Z

    .line 108
    return-void
.end method

.method private splitNewArrayType(Lscenelib/annotations/io/ASTPath;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 11
    .param p1, "astPath"    # Lscenelib/annotations/io/ASTPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/io/ASTPath;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTPath;",
            "Lscenelib/annotations/el/InnerTypeLocation;",
            ">;"
        }
    .end annotation

    .line 1209
    move-object v0, p1

    .line 1210
    .local v0, "outerPath":Lscenelib/annotations/io/ASTPath;
    const/4 v1, 0x0

    .line 1211
    .local v1, "loc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-virtual {p1}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1213
    .local v2, "last":I
    if-lez v2, :cond_0

    .line 1214
    invoke-virtual {p1, v2}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 1215
    .local v3, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_0

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1216
    invoke-virtual {v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v5

    .line 1217
    .local v5, "a":I
    if-lez v5, :cond_0

    .line 1218
    invoke-virtual {p1}, Lscenelib/annotations/io/ASTPath;->getParentPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v6

    new-instance v7, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 1219
    new-instance v4, Lscenelib/annotations/el/InnerTypeLocation;

    mul-int/lit8 v6, v5, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->getTypePathFromBinary(Ljava/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    move-object v1, v4

    .line 1223
    .end local v3    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v5    # "a":I
    :cond_0
    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addDef(Lscenelib/annotations/el/AnnotationDef;)V
    .locals 3
    .param p1, "ad"    # Lscenelib/annotations/el/AnnotationDef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 683
    iget-object v0, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    .line 684
    .local v0, "basename":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 685
    .local v1, "dotPos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 686
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    :cond_0
    invoke-virtual {p0, p1, v0}, Lscenelib/annotations/io/IndexFileParser;->addDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public addDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)V
    .locals 3
    .param p1, "ad"    # Lscenelib/annotations/el/AnnotationDef;
    .param p2, "basename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    iget-object v1, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate definition of annotation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 699
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    iget-object v1, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object v0, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 702
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileParser;->defs:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_2
    :goto_0
    return-void
.end method
