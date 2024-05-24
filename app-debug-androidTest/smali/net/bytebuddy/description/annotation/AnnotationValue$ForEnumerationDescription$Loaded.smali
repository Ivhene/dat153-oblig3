.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded$WithIncompatibleRuntimeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final enumeration:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1801
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded<TV;>;"
    .local p1, "enumeration":Ljava/lang/Enum;, "TV;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;-><init>()V

    .line 1802
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;->enumeration:Ljava/lang/Enum;

    .line 1803
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1833
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded<TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1834
    return v0

    .line 1835
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1836
    return v2

    .line 1838
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 1839
    .local v1, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isResolved()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;->enumeration:Ljava/lang/Enum;

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

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

    .line 1809
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded<TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1828
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;->enumeration:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public represents(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1823
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;->enumeration:Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resolve()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1816
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;->enumeration:Ljava/lang/Enum;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1789
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded<TV;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;->resolve()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1844
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;->enumeration:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
