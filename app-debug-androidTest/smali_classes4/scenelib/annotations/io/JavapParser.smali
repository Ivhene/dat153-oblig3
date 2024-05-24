.class public final Lscenelib/annotations/io/JavapParser;
.super Ljava/lang/Object;
.source "JavapParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscenelib/annotations/io/JavapParser$AnnotationSection;,
        Lscenelib/annotations/io/JavapParser$TargetMode;
    }
.end annotation


# static fields
.field private static final CONST_POOL_DATA_PREFIX:Ljava/lang/String; = "const #"

.field private static final SECTION_DATA_PREFIX:Ljava/lang/String; = "   "

.field private static final SECTION_TITLE_PREFIX:Ljava/lang/String; = "  "

.field private static final annotationHead:Ljava/lang/String; = "//Annotation L"

.field private static final itlnHead:Ljava/lang/String; = "location = "

.field private static final localLocRegex:Ljava/util/regex/Pattern;

.field private static final offsetHead:Ljava/lang/String; = "offset = "

.field private static final paramIdxHead:Ljava/lang/String; = "parameter = "

.field private static final tagHead:Ljava/lang/String; = "type = "

.field private static final typeIndexHead:Ljava/lang/String; = "type_index = "


# instance fields
.field private final bin:Ljava/io/BufferedReader;

.field private line:Ljava/lang/String;

.field private lineNo:I

.field private final scene:Lscenelib/annotations/el/AScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    nop

    .line 143
    const-string v0, "^\\s*start_pc = (\\d+), length = (\\d+), index = (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/JavapParser;->localLocRegex:Ljava/util/regex/Pattern;

    .line 142
    return-void
.end method

.method private constructor <init>(Ljava/io/Reader;Lscenelib/annotations/el/AScene;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "scene"    # Lscenelib/annotations/el/AScene;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lscenelib/annotations/io/JavapParser;->lineNo:I

    .line 390
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lscenelib/annotations/io/JavapParser;->bin:Ljava/io/BufferedReader;

    .line 391
    iput-object p2, p0, Lscenelib/annotations/io/JavapParser;->scene:Lscenelib/annotations/el/AScene;

    .line 392
    return-void
.end method

.method private chooseSubElement(Lscenelib/annotations/el/AElement;Lscenelib/annotations/io/JavapParser$AnnotationSection;)Lscenelib/annotations/el/AElement;
    .locals 9
    .param p1, "member"    # Lscenelib/annotations/el/AElement;
    .param p2, "sec"    # Lscenelib/annotations/io/JavapParser$AnnotationSection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 178
    sget-object v0, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$scenelib$annotations$io$JavapParser$TargetMode:[I

    iget-object v1, p2, Lscenelib/annotations/io/JavapParser$AnnotationSection;->locMode:Lscenelib/annotations/io/JavapParser$TargetMode;

    invoke-virtual {v1}, Lscenelib/annotations/io/JavapParser$TargetMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "parameter = "

    packed-switch v0, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :pswitch_0
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 194
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "targetTypeName":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/tools/javac/code/TargetType;->valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/TargetType;

    move-result-object v2

    .line 197
    .local v2, "tt":Lcom/sun/tools/javac/code/TargetType;
    if-eqz v2, :cond_0

    .line 198
    move-object v3, v2

    .line 202
    .local v3, "targetType":Lcom/sun/tools/javac/code/TargetType;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 205
    sget-object v4, Lscenelib/annotations/io/JavapParser$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_1

    .line 253
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 248
    :pswitch_1
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->parseOffset()I

    move-result v1

    .line 249
    .local v1, "offset":I
    move-object v4, p1

    check-cast v4, Lscenelib/annotations/el/AMethod;

    iget-object v4, v4, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v4, v4, Lscenelib/annotations/el/ABlock;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v5}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 250
    .local v4, "subOuterType":Lscenelib/annotations/el/ATypeElement;
    goto/16 :goto_0

    .line 242
    .end local v1    # "offset":I
    .end local v4    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    :pswitch_2
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->parseOffset()I

    move-result v1

    .line 243
    .restart local v1    # "offset":I
    move-object v4, p1

    check-cast v4, Lscenelib/annotations/el/AMethod;

    iget-object v4, v4, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v4, v4, Lscenelib/annotations/el/ABlock;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v5}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 244
    .restart local v4    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    goto/16 :goto_0

    .line 235
    .end local v1    # "offset":I
    .end local v4    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    :pswitch_3
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->parseOffset()I

    move-result v1

    .line 236
    .restart local v1    # "offset":I
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->parseTypeIndex()I

    move-result v4

    .line 237
    .local v4, "typeIndex":I
    move-object v5, p1

    check-cast v5, Lscenelib/annotations/el/AMethod;

    iget-object v5, v5, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v5, v5, Lscenelib/annotations/el/ABlock;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v4}, Lscenelib/annotations/el/RelativeLocation;->createOffset(II)Lscenelib/annotations/el/RelativeLocation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/ATypeElement;

    .line 238
    .local v5, "subOuterType":Lscenelib/annotations/el/ATypeElement;
    move-object v4, v5

    goto :goto_0

    .line 223
    .end local v1    # "offset":I
    .end local v4    # "typeIndex":I
    .end local v5    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    :pswitch_4
    sget-object v1, Lscenelib/annotations/io/JavapParser;->localLocRegex:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 224
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 225
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 226
    .local v4, "index":I
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 227
    .local v5, "scopeStart":I
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 228
    .local v6, "scopeLength":I
    new-instance v7, Lscenelib/annotations/el/LocalLocation;

    invoke-direct {v7, v4, v5, v6}, Lscenelib/annotations/el/LocalLocation;-><init>(III)V

    .line 230
    .local v7, "ll":Lscenelib/annotations/el/LocalLocation;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 231
    move-object v8, p1

    check-cast v8, Lscenelib/annotations/el/AMethod;

    iget-object v8, v8, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v8, v8, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v8, v7}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/AField;

    iget-object v8, v8, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    .line 232
    .local v8, "subOuterType":Lscenelib/annotations/el/ATypeElement;
    move-object v4, v8

    goto :goto_0

    .line 214
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "index":I
    .end local v5    # "scopeStart":I
    .end local v6    # "scopeLength":I
    .end local v7    # "ll":Lscenelib/annotations/el/LocalLocation;
    .end local v8    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    :pswitch_5
    iget-object v4, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 216
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v5, v1

    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    .local v1, "paramIdx":I
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 218
    move-object v4, p1

    check-cast v4, Lscenelib/annotations/el/AMethod;

    iget-object v4, v4, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AField;

    iget-object v4, v4, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    .line 219
    .local v4, "subOuterType":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 211
    .end local v1    # "paramIdx":I
    .end local v4    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    :pswitch_6
    move-object v1, p1

    check-cast v1, Lscenelib/annotations/el/AMethod;

    iget-object v1, v1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v4, v1, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    .line 212
    .restart local v4    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    goto :goto_0

    .line 208
    .end local v4    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    :pswitch_7
    move-object v4, p1

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 209
    .restart local v4    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    nop

    .line 257
    :goto_0
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->parseInnerTypeLocationNums()Ljava/util/List;

    move-result-object v1

    .line 258
    .local v1, "location":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v1}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->getTypePathFromBinary(Ljava/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    .line 259
    .local v5, "itl":Lscenelib/annotations/el/InnerTypeLocation;
    iget-object v6, v4, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v6, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/AElement;

    .line 262
    .local v6, "subElement":Lscenelib/annotations/el/AElement;
    return-object v6

    .line 200
    .end local v1    # "location":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "targetType":Lcom/sun/tools/javac/code/TargetType;
    .end local v4    # "subOuterType":Lscenelib/annotations/el/ATypeElement;
    .end local v5    # "itl":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v6    # "subElement":Lscenelib/annotations/el/AElement;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "null target type"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v0    # "targetTypeName":Ljava/lang/String;
    .end local v2    # "tt":Lcom/sun/tools/javac/code/TargetType;
    :pswitch_8
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "paramIdx":I
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 189
    move-object v1, p1

    check-cast v1, Lscenelib/annotations/el/AMethod;

    iget-object v1, v1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AElement;

    return-object v1

    .line 181
    .end local v0    # "paramIdx":I
    :pswitch_9
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private inData()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 70
    const-string v1, "const #"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 69
    :goto_1
    return v0
.end method

.method private inMember()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private nextLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    nop

    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->bin:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 54
    iget v1, p0, Lscenelib/annotations/io/JavapParser;->lineNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lscenelib/annotations/io/JavapParser;->lineNo:I

    .line 55
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :cond_1
    return-void
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 360
    :try_start_0
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 362
    :goto_0
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 364
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 365
    const-string v0, "public "

    invoke-direct {p0, v0}, Lscenelib/annotations/io/JavapParser;->trim(Ljava/lang/String;)V

    .line 366
    const-string v0, "protected "

    invoke-direct {p0, v0}, Lscenelib/annotations/io/JavapParser;->trim(Ljava/lang/String;)V

    .line 367
    const-string v0, "private "

    invoke-direct {p0, v0}, Lscenelib/annotations/io/JavapParser;->trim(Ljava/lang/String;)V

    .line 368
    const-string v0, "abstract "

    invoke-direct {p0, v0}, Lscenelib/annotations/io/JavapParser;->trim(Ljava/lang/String;)V

    .line 369
    const-string v0, "final "

    invoke-direct {p0, v0}, Lscenelib/annotations/io/JavapParser;->trim(Ljava/lang/String;)V

    .line 370
    const-string v0, "class "

    invoke-direct {p0, v0}, Lscenelib/annotations/io/JavapParser;->trim(Ljava/lang/String;)V

    .line 371
    const-string v0, "interface "

    invoke-direct {p0, v0}, Lscenelib/annotations/io/JavapParser;->trim(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 373
    .local v0, "nameEnd":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 374
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    nop

    .line 375
    .local v1, "className":Ljava/lang/String;
    invoke-static {v1}, Lscenelib/annotations/io/IOUtils;->packagePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "pp":Ljava/lang/String;
    invoke-static {v1}, Lscenelib/annotations/io/IOUtils;->basenamePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "bp":Ljava/lang/String;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 378
    const-string v4, "package-info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    iget-object v4, p0, Lscenelib/annotations/io/JavapParser;->scene:Lscenelib/annotations/el/AScene;

    iget-object v4, v4, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AElement;

    invoke-direct {p0, v4}, Lscenelib/annotations/io/JavapParser;->parseClass(Lscenelib/annotations/el/AElement;)V

    goto :goto_2

    .line 381
    :cond_1
    iget-object v4, p0, Lscenelib/annotations/io/JavapParser;->scene:Lscenelib/annotations/el/AScene;

    iget-object v4, v4, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AElement;

    invoke-direct {p0, v4}, Lscenelib/annotations/io/JavapParser;->parseClass(Lscenelib/annotations/el/AElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0    # "nameEnd":I
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "pp":Ljava/lang/String;
    .end local v3    # "bp":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 386
    :cond_2
    nop

    .line 387
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lscenelib/annotations/io/JavapParser;->lineNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parse(Ljava/io/Reader;Lscenelib/annotations/el/AScene;)V
    .locals 1
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "scene"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 398
    new-instance v0, Lscenelib/annotations/io/JavapParser;

    invoke-direct {v0, p0, p1}, Lscenelib/annotations/io/JavapParser;-><init>(Ljava/io/Reader;Lscenelib/annotations/el/AScene;)V

    invoke-direct {v0}, Lscenelib/annotations/io/JavapParser;->parse()V

    .line 399
    return-void
.end method

.method public static parse(Ljava/lang/String;Lscenelib/annotations/el/AScene;)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "scene"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/plumelib/util/FileIOException;
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 404
    .local v0, "lnr":Ljava/io/LineNumberReader;
    :try_start_0
    invoke-static {v0, p1}, Lscenelib/annotations/io/JavapParser;->parse(Ljava/io/Reader;Lscenelib/annotations/el/AScene;)V
    :try_end_0
    .catch Lscenelib/annotations/io/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    nop

    .line 408
    return-void

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Lscenelib/annotations/io/ParseException;
    new-instance v2, Lorg/checkerframework/org/plumelib/util/FileIOException;

    invoke-direct {v2, v0, p0, v1}, Lorg/checkerframework/org/plumelib/util/FileIOException;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private parseAnnotationBody(Lscenelib/annotations/AnnotationBuilder;Ljava/lang/String;)Lscenelib/annotations/Annotation;
    .locals 6
    .param p1, "ab"    # Lscenelib/annotations/AnnotationBuilder;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "fieldIndent":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "line2":Ljava/lang/String;
    const-string v2, "target"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "parameter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    goto :goto_2

    .line 120
    :cond_0
    nop

    .line 121
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "fieldName":Ljava/lang/String;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 123
    iget-object v3, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 124
    .local v3, "tag":C
    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 130
    :sswitch_0
    goto :goto_1

    .line 126
    :sswitch_1
    goto :goto_1

    .line 128
    :sswitch_2
    nop

    .line 135
    .end local v1    # "line2":Ljava/lang/String;
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "tag":C
    :goto_1
    goto :goto_0

    .line 136
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lscenelib/annotations/AnnotationBuilder;->finish()Lscenelib/annotations/Annotation;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x5b -> :sswitch_1
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseAnnotationHead()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 100
    const-string v1, "//Annotation L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 99
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "annoTypeName":Ljava/lang/String;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 103
    return-object v0
.end method

.method private parseAnnotationSection(Lscenelib/annotations/el/AElement;Lscenelib/annotations/io/JavapParser$AnnotationSection;)V
    .locals 7
    .param p1, "member"    # Lscenelib/annotations/el/AElement;
    .param p2, "sec"    # Lscenelib/annotations/io/JavapParser$AnnotationSection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 270
    nop

    :goto_0
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->inData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->parseAnnotationHead()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "annoTypeName":Ljava/lang/String;
    iget-object v1, p2, Lscenelib/annotations/io/JavapParser$AnnotationSection;->retention:Ljava/lang/annotation/RetentionPolicy;

    .line 273
    .local v1, "retention":Ljava/lang/annotation/RetentionPolicy;
    sget-object v2, Lscenelib/annotations/AnnotationFactory;->saf:Lscenelib/annotations/AnnotationFactory;

    invoke-static {v1}, Lscenelib/annotations/Annotations;->getRetentionPolicyMetaAnnotationSet(Ljava/lang/annotation/RetentionPolicy;)Ljava/util/Set;

    move-result-object v3

    const-string v4, "JavapParser"

    invoke-virtual {v2, v0, v3, v4}, Lscenelib/annotations/AnnotationFactory;->beginAnnotation(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v2

    .line 274
    .local v2, "ab":Lscenelib/annotations/AnnotationBuilder;
    const-string v3, "   "

    if-nez v2, :cond_0

    .line 277
    sget-object v5, Lscenelib/annotations/AnnotationFactory;->saf:Lscenelib/annotations/AnnotationFactory;

    sget-object v6, Lscenelib/annotations/Annotations;->noAnnotations:Ljava/util/Set;

    .line 278
    invoke-virtual {v5, v0, v6, v4}, Lscenelib/annotations/AnnotationFactory;->beginAnnotation(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lscenelib/annotations/AnnotationBuilder;

    move-result-object v4

    .line 277
    invoke-direct {p0, v4, v3}, Lscenelib/annotations/io/JavapParser;->parseAnnotationBody(Lscenelib/annotations/AnnotationBuilder;Ljava/lang/String;)Lscenelib/annotations/Annotation;

    goto :goto_1

    .line 282
    :cond_0
    invoke-direct {p0, v2, v3}, Lscenelib/annotations/io/JavapParser;->parseAnnotationBody(Lscenelib/annotations/AnnotationBuilder;Ljava/lang/String;)Lscenelib/annotations/Annotation;

    move-result-object v3

    .line 285
    .local v3, "a":Lscenelib/annotations/Annotation;
    invoke-direct {p0, p1, p2}, Lscenelib/annotations/io/JavapParser;->chooseSubElement(Lscenelib/annotations/el/AElement;Lscenelib/annotations/io/JavapParser$AnnotationSection;)Lscenelib/annotations/el/AElement;

    move-result-object v4

    .line 286
    .local v4, "annoMember":Lscenelib/annotations/el/AElement;
    iget-object v5, v4, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v0    # "annoTypeName":Ljava/lang/String;
    .end local v1    # "retention":Ljava/lang/annotation/RetentionPolicy;
    .end local v2    # "ab":Lscenelib/annotations/AnnotationBuilder;
    .end local v3    # "a":Lscenelib/annotations/Annotation;
    .end local v4    # "annoMember":Lscenelib/annotations/el/AElement;
    :goto_1
    goto :goto_0

    .line 289
    :cond_1
    return-void
.end method

.method private parseClass(Lscenelib/annotations/el/AElement;)V
    .locals 6
    .param p1, "clazz"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Lscenelib/annotations/io/JavapParser;->parseMember(Lscenelib/annotations/el/AElement;)V

    .line 330
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 332
    :goto_0
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    const-string v1, "static {}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 336
    const-string v0, "<clinit>"

    invoke-direct {p0, p1, v0}, Lscenelib/annotations/io/JavapParser;->parseMethodBody(Lscenelib/annotations/el/AElement;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 339
    .local v0, "lparen":I
    const/4 v1, -0x1

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    .line 341
    iget-object v1, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 342
    .local v1, "space":I
    iget-object v2, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "fieldName":Ljava/lang/String;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 344
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    move-object v3, p1

    check-cast v3, Lscenelib/annotations/el/AClass;

    iget-object v3, v3, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AElement;

    invoke-direct {p0, v3}, Lscenelib/annotations/io/JavapParser;->parseMember(Lscenelib/annotations/el/AElement;)V

    .line 346
    .end local v1    # "space":I
    .end local v2    # "fieldName":Ljava/lang/String;
    goto :goto_1

    .line 348
    :cond_1
    iget-object v1, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 349
    .restart local v1    # "space":I
    iget-object v2, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "methodName":Ljava/lang/String;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 351
    invoke-direct {p0, p1, v2}, Lscenelib/annotations/io/JavapParser;->parseMethodBody(Lscenelib/annotations/el/AElement;Ljava/lang/String;)V

    .line 353
    .end local v0    # "lparen":I
    .end local v1    # "space":I
    .end local v2    # "methodName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 355
    :cond_2
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 356
    return-void
.end method

.method private parseInnerTypeLocationNums()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 162
    const-string v1, "location = "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "numsStr":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "nums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 166
    .local v2, "comma":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    nop

    .line 173
    .end local v2    # "comma":I
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 174
    return-object v1

    .line 170
    .restart local v2    # "comma":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .end local v2    # "comma":I
    goto :goto_0
.end method

.method private parseMember(Lscenelib/annotations/el/AElement;)V
    .locals 7
    .param p1, "member"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 292
    nop

    :goto_0
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->inMember()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 295
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "secTitle":Ljava/lang/String;
    const/4 v1, 0x0

    .line 297
    .local v1, "sec0":Lscenelib/annotations/io/JavapParser$AnnotationSection;
    invoke-static {}, Lscenelib/annotations/io/JavapParser$AnnotationSection;->values()[Lscenelib/annotations/io/JavapParser$AnnotationSection;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 298
    .local v5, "s":Lscenelib/annotations/io/JavapParser$AnnotationSection;
    iget-object v6, v5, Lscenelib/annotations/io/JavapParser$AnnotationSection;->secTitle:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    move-object v1, v5

    .line 297
    .end local v5    # "s":Lscenelib/annotations/io/JavapParser$AnnotationSection;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 302
    :cond_1
    if-eqz v1, :cond_2

    .line 303
    move-object v2, v1

    .line 304
    .local v2, "sec":Lscenelib/annotations/io/JavapParser$AnnotationSection;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 305
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got section "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, p1, v2}, Lscenelib/annotations/io/JavapParser;->parseAnnotationSection(Lscenelib/annotations/el/AElement;Lscenelib/annotations/io/JavapParser$AnnotationSection;)V

    .line 307
    .end local v2    # "sec":Lscenelib/annotations/io/JavapParser$AnnotationSection;
    goto :goto_3

    .line 308
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unrecognized section "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 311
    :goto_2
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->inData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    goto :goto_2

    .line 315
    .end local v0    # "secTitle":Ljava/lang/String;
    .end local v1    # "sec0":Lscenelib/annotations/io/JavapParser$AnnotationSection;
    :cond_3
    :goto_3
    goto :goto_0

    .line 316
    :cond_4
    return-void
.end method

.method private parseMethodBody(Lscenelib/annotations/el/AElement;Ljava/lang/String;)V
    .locals 5
    .param p1, "clazz"    # Lscenelib/annotations/el/AElement;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    const-string v1, "  Signature: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "sig":Ljava/lang/String;
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "methodKey":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    move-object v2, p1

    check-cast v2, Lscenelib/annotations/el/AClass;

    iget-object v2, v2, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    invoke-direct {p0, v2}, Lscenelib/annotations/io/JavapParser;->parseMember(Lscenelib/annotations/el/AElement;)V

    .line 324
    return-void
.end method

.method private parseOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 148
    const-string v1, "offset = "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "offset":I
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 150
    return v0
.end method

.method private parseTypeIndex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 155
    const-string v1, "type_index = "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "typeIndex":I
    invoke-direct {p0}, Lscenelib/annotations/io/JavapParser;->nextLine()V

    .line 157
    return v0
.end method

.method private trim(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/io/JavapParser;->line:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method
