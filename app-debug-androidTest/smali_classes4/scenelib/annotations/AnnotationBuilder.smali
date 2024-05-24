.class public Lscenelib/annotations/AnnotationBuilder;
.super Ljava/lang/Object;
.source "AnnotationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field active:Z

.field arrayInProgress:Z

.field def:Lscenelib/annotations/el/AnnotationDef;

.field private fieldTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            ">;"
        }
    .end annotation
.end field

.field fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field source:Ljava/lang/String;

.field tlAnnotationsHere:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->arrayInProgress:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->active:Z

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    .line 231
    if-eqz p1, :cond_1

    .line 232
    if-eqz p2, :cond_0

    .line 233
    iput-object p1, p0, Lscenelib/annotations/AnnotationBuilder;->typeName:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lscenelib/annotations/AnnotationBuilder;->source:Ljava/lang/String;

    .line 235
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 237
    .local p2, "tlAnnotationsHere":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->arrayInProgress:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->active:Z

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    .line 238
    if-eqz p1, :cond_1

    .line 239
    if-eqz p3, :cond_0

    .line 240
    iput-object p1, p0, Lscenelib/annotations/AnnotationBuilder;->typeName:Ljava/lang/String;

    .line 241
    iput-object p2, p0, Lscenelib/annotations/AnnotationBuilder;->tlAnnotationsHere:Ljava/util/Set;

    .line 242
    iput-object p3, p0, Lscenelib/annotations/AnnotationBuilder;->source:Ljava/lang/String;

    .line 243
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method constructor <init>(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/String;)V
    .locals 1
    .param p1, "def"    # Lscenelib/annotations/el/AnnotationDef;
    .param p2, "source"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->arrayInProgress:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->active:Z

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    .line 224
    if-eqz p1, :cond_1

    .line 225
    if-eqz p2, :cond_0

    .line 226
    iput-object p1, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    .line 227
    iput-object p2, p0, Lscenelib/annotations/AnnotationBuilder;->source:Ljava/lang/String;

    .line 228
    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private checkAddField(Ljava/lang/String;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 103
    iget-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->active:Z

    if-eqz v0, :cond_2

    .line 106
    iget-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->arrayInProgress:Z

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addEmptyArrayField(Ljava/lang/String;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 189
    invoke-direct {p0, p1}, Lscenelib/annotations/AnnotationBuilder;->checkAddField(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    new-instance v1, Lscenelib/annotations/field/ArrayAFT;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public addScalarField(Ljava/lang/String;Lscenelib/annotations/field/ScalarAFT;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "aft"    # Lscenelib/annotations/field/ScalarAFT;
    .param p3, "x"    # Ljava/lang/Object;

    .line 131
    invoke-direct {p0, p1}, Lscenelib/annotations/AnnotationBuilder;->checkAddField(Ljava/lang/String;)V

    .line 132
    instance-of v0, p3, Lscenelib/annotations/Annotation;

    if-eqz v0, :cond_1

    instance-of v0, p3, Lscenelib/annotations/Annotation;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All subannotations must be Annotations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_2
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public beginArrayField(Ljava/lang/String;Lscenelib/annotations/field/ArrayAFT;)Lscenelib/annotations/ArrayBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "aft"    # Lscenelib/annotations/field/ArrayAFT;

    .line 159
    invoke-direct {p0, p1}, Lscenelib/annotations/AnnotationBuilder;->checkAddField(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lscenelib/annotations/AnnotationBuilder;->fieldTypes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lscenelib/annotations/field/ArrayAFT;

    .line 164
    if-eqz p2, :cond_3

    .line 168
    if-eqz p2, :cond_2

    .line 170
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->arrayInProgress:Z

    .line 171
    iget-object v0, p2, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;

    iget-object v1, p2, Lscenelib/annotations/field/ArrayAFT;->elementType:Lscenelib/annotations/field/ScalarAFT;

    invoke-direct {v0, p0, p1, v1}, Lscenelib/annotations/AnnotationBuilder$SimpleArrayBuilder;-><init>(Lscenelib/annotations/AnnotationBuilder;Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;)V

    return-object v0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_3
    new-instance v0, Ljava/lang/Error;

    iget-object v1, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v1, v1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    iget-object v2, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Definition for %s lacks field %s:%n  %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fieldTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/field/AnnotationFieldType;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->fieldTypes:Ljava/util/Map;

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    return-object v0
.end method

.method public finish()Lscenelib/annotations/Annotation;
    .locals 5

    .line 206
    iget-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->active:Z

    if-eqz v0, :cond_5

    .line 209
    iget-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->arrayInProgress:Z

    if-nez v0, :cond_4

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscenelib/annotations/AnnotationBuilder;->active:Z

    .line 213
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lscenelib/annotations/el/AnnotationDef;

    iget-object v1, p0, Lscenelib/annotations/AnnotationBuilder;->typeName:Ljava/lang/String;

    iget-object v2, p0, Lscenelib/annotations/AnnotationBuilder;->tlAnnotationsHere:Ljava/util/Set;

    iget-object v3, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    iget-object v4, p0, Lscenelib/annotations/AnnotationBuilder;->source:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_1
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->typeName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->fieldTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    :goto_0
    new-instance v0, Lscenelib/annotations/Annotation;

    iget-object v1, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v2, p0, Lscenelib/annotations/AnnotationBuilder;->fieldValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/Annotation;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V

    return-object v0

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    if-eqz v0, :cond_0

    .line 247
    const-string v1, "AnnotationBuilder %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->typeName:Ljava/lang/String;

    iget-object v1, p0, Lscenelib/annotations/AnnotationBuilder;->tlAnnotationsHere:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(AnnotationBuilder %s : %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->def:Lscenelib/annotations/el/AnnotationDef;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, v0, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/AnnotationBuilder;->typeName:Ljava/lang/String;

    return-object v0
.end method
