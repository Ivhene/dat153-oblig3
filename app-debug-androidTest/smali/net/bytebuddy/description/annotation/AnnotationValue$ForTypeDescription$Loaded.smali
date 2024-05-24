.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Class<",
        "TU;>;>",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 2128
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded<TU;>;"
    .local p1, "type":Ljava/lang/Class;, "TU;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;-><init>()V

    .line 2129
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;->type:Ljava/lang/Class;

    .line 2130
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 2160
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded<TU;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2161
    return v0

    .line 2162
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2163
    return v2

    .line 2165
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 2166
    .local v1, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isResolved()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;->type:Ljava/lang/Class;

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    .line 2136
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded<TU;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 2155
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded<TU;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public represents(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 2150
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded<TU;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resolve()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 2143
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded<TU;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 2116
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded<TU;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;->resolve()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2171
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded<TU;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription$Loaded;->type:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toSourceString(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
