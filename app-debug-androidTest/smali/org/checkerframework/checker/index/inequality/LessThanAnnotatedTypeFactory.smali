.class public Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "LessThanAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;
    }
.end annotation


# instance fields
.field private final BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field public final UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 47
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 41
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/LessThanBottom;

    .line 42
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/LessThanUnknown;

    .line 44
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->postInit()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    .line 40
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method public static getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 3
    .param p0, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    const-class v0, Lorg/checkerframework/checker/index/qual/LessThanBottom;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_0
    const-class v0, Lorg/checkerframework/checker/index/qual/LessThanUnknown;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 294
    :cond_1
    const-class v0, Ljava/lang/String;

    .line 295
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method private getMinValueFromString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)J
    .locals 9
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;

    .line 176
    nop

    .line 177
    const-wide/high16 v0, -0x8000000000000000L

    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v2

    .line 178
    invoke-virtual {v2, p1, p3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .local v2, "expressionRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 183
    nop

    .line 184
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v3

    const-class v4, Lorg/checkerframework/common/value/qual/IntRange;

    .line 185
    invoke-virtual {v3, v2, p2, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 186
    .local v3, "intRange":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_0

    .line 187
    invoke-static {v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    iget-wide v0, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    return-wide v0

    .line 189
    :cond_0
    nop

    .line 190
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v4

    const-class v5, Lorg/checkerframework/common/value/qual/IntVal;

    .line 191
    invoke-virtual {v4, v2, p2, v5}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 192
    .local v4, "intValue":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_1

    .line 193
    invoke-static {v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    return-wide v5

    .line 197
    .end local v0    # "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    instance-of v5, v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v5, :cond_4

    .line 198
    move-object v5, v2

    check-cast v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 199
    .local v5, "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_4

    .line 201
    nop

    .line 202
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    .line 204
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    const-class v6, Lorg/checkerframework/common/value/qual/ArrayLenRange;

    .line 203
    invoke-virtual {v0, v1, p2, v6}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 205
    .local v0, "arrayRange":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_2

    .line 206
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    return-wide v6

    .line 208
    :cond_2
    nop

    .line 209
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v1

    const-class v6, Lorg/checkerframework/common/value/qual/ArrayLen;

    .line 210
    invoke-virtual {v1, v2, p2, v6}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 211
    .local v1, "arrayLen":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_3

    .line 212
    nop

    .line 213
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v6

    .line 214
    .local v6, "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    return-wide v7

    .line 217
    .end local v6    # "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    const-wide/16 v6, 0x0

    return-wide v6

    .line 221
    .end local v0    # "arrayRange":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "arrayLen":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_4
    return-wide v0

    .line 179
    .end local v2    # "expressionRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v3    # "intRange":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "intValue":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    return-wide v0
.end method

.method public static isLessThan(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z
    .locals 2
    .param p0, "left"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "right"    # Ljava/lang/String;

    .line 142
    invoke-static {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 144
    const/4 v1, 0x1

    return v1

    .line 146
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isLessThanOrEqual(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z
    .locals 6
    .param p0, "left"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "right"    # Ljava/lang/String;

    .line 232
    invoke-static {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 235
    return v1

    .line 237
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    return v1

    .line 241
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 242
    .local v3, "expression":Ljava/lang/String;
    const-string v5, " + 1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    return v1

    .line 247
    .end local v3    # "expression":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 248
    :cond_3
    return v4
.end method


# virtual methods
.method protected createDependentTypesHelper()Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .locals 1

    .line 69
    new-instance v0, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method public createLessThanQualifier(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .line 280
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->createLessThanQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public createLessThanQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 267
    .local p1, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 268
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 269
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 272
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/index/qual/LessThan;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 273
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 274
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 74
    new-instance v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;-><init>(Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/index/qual/LessThan;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/index/qual/LessThanUnknown;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/index/qual/LessThanBottom;

    aput-object v3, v1, v2

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    return-object v0
.end method

.method public getLessThanExpressions(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;
    .locals 2
    .param p1, "expression"    # Lcom/sun/source/tree/ExpressionTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 257
    .local v0, "annotatedTypeMirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .locals 1

    .line 57
    const-class v0, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    return-object v0
.end method

.method public isLessThan(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z
    .locals 2
    .param p1, "left"    # Lcom/sun/source/tree/Tree;
    .param p2, "right"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 137
    .local v0, "leftATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThan(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isLessThanByValue(Lcom/sun/source/tree/Tree;Ljava/lang/String;Lcom/sun/source/util/TreePath;)Z
    .locals 9
    .param p1, "smaller"    # Lcom/sun/source/tree/Tree;
    .param p2, "bigger"    # Ljava/lang/String;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;

    .line 151
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMinValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v0

    .line 152
    .local v0, "smallerValue":Ljava/lang/Long;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 156
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromJavaExpression(Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v2

    .line 157
    .local v2, "offsetEquation":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v3

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    move v1, v4

    :cond_1
    return v1

    .line 163
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v3

    int-to-long v7, v3

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 164
    nop

    .line 166
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v3

    .line 165
    const/16 v5, 0x2d

    invoke-virtual {v2, v5, v3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->copyAdd(CLorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1, p3}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getMinValueFromString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)J

    move-result-wide v5

    .line 169
    .local v5, "minValueOfBigger":J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method

.method public isLessThanOrEqual(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z
    .locals 2
    .param p1, "left"    # Lcom/sun/source/tree/Tree;
    .param p2, "right"    # Ljava/lang/String;

    .line 226
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 227
    .local v0, "leftATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThanOrEqual(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
