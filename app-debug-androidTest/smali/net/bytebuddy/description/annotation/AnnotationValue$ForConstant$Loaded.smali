.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private transient synthetic hashCode:I

.field private final propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V
    .locals 0
    .param p2, "propertyDelegate"    # Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;",
            ")V"
        }
    .end annotation

    .line 1487
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;-><init>()V

    .line 1488
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->value:Ljava/lang/Object;

    .line 1489
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    .line 1490
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 1521
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded<TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1522
    return v0

    .line 1523
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1524
    return v2

    .line 1526
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 1527
    .local v1, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isResolved()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v4, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->value:Ljava/lang/Object;

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    .line 1496
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded<TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    .line 1516
    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded<TV;>;"
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->value:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->hashCode(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    move-object v1, v0

    move v0, v3

    .end local v0    # "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded<TV;>;"
    :goto_0
    if-nez v0, :cond_1

    iget v0, v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->hashCode:I

    :goto_1
    return v0
.end method

.method public represents(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 1510
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1503
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1532
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
