.class Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;
.super Ljavax/lang/model/util/AbstractElementVisitor7;
.source "SignaturePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/debug/SignaturePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElementPrinter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/AbstractElementVisitor7<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final INDENTION:Ljava/lang/String; = "    "


# instance fields
.field private final factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private indent:Ljava/lang/String;

.field private final out:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "out"    # Ljava/io/PrintStream;

    .line 137
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractElementVisitor7;-><init>()V

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->indent:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 139
    iput-object p2, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    .line 140
    return-void
.end method

.method private printSupers(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 5
    .param p1, "dt"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 277
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v1, "extends "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "isntFirst":Z
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 285
    .local v2, "st":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz v0, :cond_1

    .line 286
    iget-object v3, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 288
    :cond_1
    const/4 v0, 0x1

    .line 289
    iget-object v3, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 290
    .end local v2    # "st":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 292
    return-void
.end method

.method private typeIdentifier(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # Ljavax/lang/model/element/TypeElement;

    .line 236
    sget-object v0, Lorg/checkerframework/common/util/debug/SignaturePrinter$2;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a type element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :pswitch_0
    const-string v0, "enum"

    return-object v0

    .line 242
    :pswitch_1
    const-string v0, "@interface"

    return-object v0

    .line 240
    :pswitch_2
    const-string v0, "class"

    return-object v0

    .line 238
    :pswitch_3
    const-string v0, "interface"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public printName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 210
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public printParameters(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 160
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 162
    .local v0, "elem":Ljavax/lang/model/element/ExecutableElement;
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 164
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 167
    :cond_0
    nop

    .line 168
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 169
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    .line 167
    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Name;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public printThrows(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 175
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "isntFirst":Z
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 183
    .local v2, "thrown":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v0, :cond_1

    .line 184
    iget-object v3, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 186
    :cond_1
    const/4 v0, 0x1

    .line 187
    iget-object v3, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 188
    .end local v2    # "thrown":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 189
    :cond_2
    return-void
.end method

.method public printType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 205
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 207
    return-void
.end method

.method public printTypeParams(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "isntFirst":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 150
    .local v2, "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v0, :cond_1

    .line 151
    iget-object v3, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    :cond_1
    const/4 v0, 0x1

    .line 154
    iget-object v3, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 155
    .end local v2    # "param":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public printVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Name;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "name"    # Ljavax/lang/model/element/Name;

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Name;Z)V

    .line 202
    return-void
.end method

.method public printVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Name;Z)V
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "name"    # Ljavax/lang/model/element/Name;
    .param p3, "isVarArg"    # Z

    .line 192
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 193
    if-eqz p3, :cond_0

    .line 194
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 197
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public bridge synthetic visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "e"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "p"    # Ljava/lang/Void;

    .line 215
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v0

    .line 218
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printTypeParams(Ljava/util/List;)V

    .line 219
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_0

    .line 220
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 222
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printName(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printParameters(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 224
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printThrows(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 225
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(C)V

    .line 227
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "e"    # Ljavax/lang/model/element/PackageElement;
    .param p2, "p"    # Ljava/lang/Void;

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot process packages"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "e"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "p"    # Ljava/lang/Void;

    .line 252
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->indent:Ljava/lang/String;

    .line 254
    .local v0, "prevIndent":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->typeIdentifier(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 257
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 259
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 260
    .local v1, "dt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-direct {p0, v1}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printSupers(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 261
    iget-object v2, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->indent:Ljava/lang/String;

    .line 265
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 266
    .local v3, "enclosed":Ljavax/lang/model/element/Element;
    invoke-virtual {p0, v3}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->visit(Ljavax/lang/model/element/Element;)Ljava/lang/Object;

    .line 267
    .end local v3    # "enclosed":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 269
    :cond_0
    iput-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->indent:Ljava/lang/String;

    .line 270
    iget-object v2, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "e"    # Ljavax/lang/model/element/TypeParameterElement;
    .param p2, "p"    # Ljava/lang/Void;

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t visit any type parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "e"    # Ljavax/lang/model/element/VariableElement;
    .param p2, "p"    # Ljava/lang/Void;

    .line 301
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 307
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->printVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Name;)V

    .line 308
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;->out:Ljava/io/PrintStream;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(C)V

    .line 310
    const/4 v1, 0x0

    return-object v1

    .line 302
    .end local v0    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can only process fields, received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
