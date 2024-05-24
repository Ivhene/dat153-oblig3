.class public Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
.super Ljava/lang/Object;
.source "HashMapResultMetadata.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    }
.end annotation


# instance fields
.field protected final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;)V
    .locals 2
    .param p1, "metadata"    # Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public static fromProto(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;)Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    .locals 7
    .param p0, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    .line 367
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>()V

    .line 368
    .local v0, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->getMetadataMapMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 369
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    iget-object v3, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    invoke-direct {v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;>;"
    goto :goto_0

    .line 372
    :cond_0
    return-object v0
.end method

.method private getValue(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;",
            "TT;)TT;"
        }
    .end annotation

    .line 411
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 412
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_1

    .line 413
    if-eqz p3, :cond_0

    .line 414
    return-object p3

    .line 416
    :cond_0
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1

    .line 418
    :cond_1
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne p2, v1, :cond_2

    .line 422
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    return-object v1

    .line 419
    :cond_2
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, p2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method private static invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 426
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No HashMapResultMetadata element found for key \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "requestedType"    # Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;
    .param p2, "foundType"    # Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    .line 432
    new-instance v0, Ljava/lang/ClassCastException;

    .line 434
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->name()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x58

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid type \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' requested from HashMapResultMetadata for key \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'.  Found type \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 432
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    .locals 1

    .line 44
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/android/apps/common/testing/accessibility/framework/ResultMetadata;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->clone()Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->clone()Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 386
    if-ne p0, p1, :cond_0

    .line 387
    const/4 v0, 0x1

    return v0

    .line 389
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    if-nez v0, :cond_1

    .line 390
    const/4 v0, 0x0

    return v0

    .line 393
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;

    .line 395
    .local v0, "metadata":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 50
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 52
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BOOLEAN:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 56
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 53
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BOOLEAN:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 51
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 62
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 63
    return p2

    .line 64
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BOOLEAN:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 68
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 65
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BOOLEAN:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 79
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 81
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BYTE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 85
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    .line 82
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BYTE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 80
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 91
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 92
    return p2

    .line 93
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BYTE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 97
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    .line 94
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BYTE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 137
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 139
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->CHAR:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 143
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    return v1

    .line 140
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->CHAR:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 138
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 149
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 150
    return p2

    .line 151
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->CHAR:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 155
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    return v1

    .line 152
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->CHAR:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 253
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 255
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->DOUBLE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 259
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 256
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->DOUBLE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 254
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 265
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 266
    return-wide p2

    .line 267
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->DOUBLE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 271
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 268
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->DOUBLE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 195
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 197
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->FLOAT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 201
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 198
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->FLOAT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 196
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 207
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 208
    return p2

    .line 209
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->FLOAT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 213
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 210
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->FLOAT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 166
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 168
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 169
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 167
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 178
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 179
    return p2

    .line 180
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 184
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 181
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getIntegerList(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INTEGER_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->getValue(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getIntegerList(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 347
    .local p2, "defaultValue":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INTEGER_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->getValue(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 224
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 226
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->LONG:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 230
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 227
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->LONG:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 225
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 236
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 237
    return-wide p2

    .line 238
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->LONG:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 242
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 239
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->LONG:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 108
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 110
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->SHORT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 114
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    .line 111
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->SHORT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 109
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 120
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 121
    return p2

    .line 122
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->SHORT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 126
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    .line 123
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->SHORT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 282
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 284
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 288
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 285
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 283
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 294
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 295
    return-object p2

    .line 296
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 300
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 297
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public getStringList(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 312
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-eqz v0, :cond_1

    .line 314
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_0

    .line 318
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    return-object v1

    .line 315
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    .line 313
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidKeyException(Ljava/lang/String;)Ljava/util/NoSuchElementException;

    move-result-object v1

    throw v1
.end method

.method public getStringList(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 324
    .local p2, "defaultValue":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    .line 325
    .local v0, "tv":Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;
    if-nez v0, :cond_0

    .line 326
    return-object p2

    .line 327
    :cond_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    if-ne v1, v2, :cond_1

    .line 331
    iget-object v1, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->value:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    return-object v1

    .line 328
    :cond_1
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    iget-object v2, v0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->type:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->invalidTypeException(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BOOLEAN:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->BYTE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->CHAR:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->DOUBLE:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->FLOAT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public putIntegerList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 352
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->INTEGER_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->LONG:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->SHORT:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-direct {v1, v2, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public putStringList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;->STRING_LIST:Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue$Type;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;
    .locals 5

    .line 376
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    move-result-object v0

    .line 377
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 378
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;

    invoke-virtual {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;->toProto()Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;->putMetadataMap(Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$TypedValueProto;)Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;

    .line 379
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata$TypedValue;>;"
    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/proto/AccessibilityEvaluationProtos$MetadataProto;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 406
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/HashMapResultMetadata;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
