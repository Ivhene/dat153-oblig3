.class Lcom/android/dx/command/annotool/AnnotationLister;
.super Ljava/lang/Object;
.source "AnnotationLister.java"


# static fields
.field private static final PACKAGE_INFO:Ljava/lang/String; = "package-info"


# instance fields
.field private final args:Lcom/android/dx/command/annotool/Main$Arguments;

.field matchInnerClassesOf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field matchPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/dx/command/annotool/Main$Arguments;)V
    .locals 1
    .param p1, "args"    # Lcom/android/dx/command/annotool/Main$Arguments;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    .line 55
    iput-object p1, p0, Lcom/android/dx/command/annotool/AnnotationLister;->args:Lcom/android/dx/command/annotool/Main$Arguments;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/command/annotool/AnnotationLister;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/command/annotool/AnnotationLister;
    .param p1, "x1"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "x2"    # Lcom/android/dx/cf/attrib/BaseAnnotations;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/dx/command/annotool/AnnotationLister;->visitPackageAnnotation(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/command/annotool/AnnotationLister;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/dx/command/annotool/AnnotationLister;->isMatchingInnerClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/command/annotool/AnnotationLister;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/dx/command/annotool/AnnotationLister;->isMatchingPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/dx/command/annotool/AnnotationLister;Lcom/android/dx/cf/direct/DirectClassFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/command/annotool/AnnotationLister;
    .param p1, "x1"    # Lcom/android/dx/cf/direct/DirectClassFile;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/dx/command/annotool/AnnotationLister;->printMatch(Lcom/android/dx/cf/direct/DirectClassFile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dx/command/annotool/AnnotationLister;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/command/annotool/AnnotationLister;
    .param p1, "x1"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "x2"    # Lcom/android/dx/cf/attrib/BaseAnnotations;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/dx/command/annotool/AnnotationLister;->visitClassAnnotation(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V

    return-void
.end method

.method private isMatchingInnerClass(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 255
    nop

    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    move v1, v0

    .local v1, "i":I
    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 256
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_1
    return v2
.end method

.method private isMatchingPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 273
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 276
    .local v0, "slashIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 277
    const-string v1, ""

    .local v1, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 279
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    nop

    .line 280
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 283
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private printMatch(Lcom/android/dx/cf/direct/DirectClassFile;)V
    .locals 5
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;

    .line 223
    iget-object v0, p0, Lcom/android/dx/command/annotool/AnnotationLister;->args:Lcom/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/command/annotool/Main$PrintType;

    .line 224
    .local v1, "pt":Lcom/android/dx/command/annotool/Main$PrintType;
    sget-object v2, Lcom/android/dx/command/annotool/AnnotationLister$2;->$SwitchMap$com$android$dx$command$annotool$Main$PrintType:[I

    invoke-virtual {v1}, Lcom/android/dx/command/annotool/Main$PrintType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 238
    :pswitch_0
    goto :goto_1

    .line 233
    :pswitch_1
    iget-object v2, p0, Lcom/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    .line 234
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    goto :goto_1

    .line 227
    :pswitch_2
    nop

    .line 228
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "classname":Ljava/lang/String;
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 230
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    nop

    .line 242
    .end local v1    # "pt":Lcom/android/dx/command/annotool/Main$PrintType;
    .end local v2    # "classname":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 243
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private printMatchPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/dx/command/annotool/AnnotationLister;->args:Lcom/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/command/annotool/Main$PrintType;

    .line 203
    .local v1, "pt":Lcom/android/dx/command/annotool/Main$PrintType;
    sget-object v2, Lcom/android/dx/command/annotool/AnnotationLister$2;->$SwitchMap$com$android$dx$command$annotool$Main$PrintType:[I

    invoke-virtual {v1}, Lcom/android/dx/command/annotool/Main$PrintType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 210
    :pswitch_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :pswitch_1
    iget-object v2, p0, Lcom/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    nop

    .line 213
    .end local v1    # "pt":Lcom/android/dx/command/annotool/Main$PrintType;
    :goto_1
    goto :goto_0

    .line 214
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visitClassAnnotation(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V
    .locals 4
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "ann"    # Lcom/android/dx/cf/attrib/BaseAnnotations;

    .line 147
    iget-object v0, p0, Lcom/android/dx/command/annotool/AnnotationLister;->args:Lcom/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    invoke-virtual {p2}, Lcom/android/dx/cf/attrib/BaseAnnotations;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/annotation/Annotation;

    .line 152
    .local v1, "anAnn":Lcom/android/dx/rop/annotation/Annotation;
    nop

    .line 153
    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "annClassName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/dx/command/annotool/AnnotationLister;->args:Lcom/android/dx/command/annotool/Main$Arguments;

    iget-object v3, v3, Lcom/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-direct {p0, p1}, Lcom/android/dx/command/annotool/AnnotationLister;->printMatch(Lcom/android/dx/cf/direct/DirectClassFile;)V

    .line 157
    .end local v1    # "anAnn":Lcom/android/dx/rop/annotation/Annotation;
    .end local v2    # "annClassName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 158
    :cond_2
    return-void
.end method

.method private visitPackageAnnotation(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V
    .locals 6
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "ann"    # Lcom/android/dx/cf/attrib/BaseAnnotations;

    .line 169
    iget-object v0, p0, Lcom/android/dx/command/annotool/AnnotationLister;->args:Lcom/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "packageName":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 177
    .local v1, "slashIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 178
    const-string v0, ""

    goto :goto_0

    .line 180
    :cond_1
    nop

    .line 181
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    invoke-virtual {p2}, Lcom/android/dx/cf/attrib/BaseAnnotations;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/annotation/Annotation;

    .line 186
    .local v3, "anAnn":Lcom/android/dx/rop/annotation/Annotation;
    nop

    .line 187
    invoke-virtual {v3}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "annClassName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/dx/command/annotool/AnnotationLister;->args:Lcom/android/dx/command/annotool/Main$Arguments;

    iget-object v5, v5, Lcom/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    invoke-direct {p0, v0}, Lcom/android/dx/command/annotool/AnnotationLister;->printMatchPackage(Ljava/lang/String;)V

    .line 191
    .end local v3    # "anAnn":Lcom/android/dx/rop/annotation/Annotation;
    .end local v4    # "annClassName":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 192
    :cond_3
    return-void
.end method


# virtual methods
.method process()V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/android/dx/command/annotool/AnnotationLister;->args:Lcom/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/android/dx/command/annotool/Main$Arguments;->files:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Lcom/android/dx/cf/direct/ClassPathOpener;

    new-instance v5, Lcom/android/dx/command/annotool/AnnotationLister$1;

    invoke-direct {v5, p0}, Lcom/android/dx/command/annotool/AnnotationLister$1;-><init>(Lcom/android/dx/command/annotool/AnnotationLister;)V

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6, v5}, Lcom/android/dx/cf/direct/ClassPathOpener;-><init>(Ljava/lang/String;ZLcom/android/dx/cf/direct/ClassPathOpener$Consumer;)V

    .line 134
    .local v4, "opener":Lcom/android/dx/cf/direct/ClassPathOpener;
    invoke-virtual {v4}, Lcom/android/dx/cf/direct/ClassPathOpener;->process()Z

    .line 60
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "opener":Lcom/android/dx/cf/direct/ClassPathOpener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method
